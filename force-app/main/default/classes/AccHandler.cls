public class AccHandler 
{
    public static void updatingAccount(list<account> acc)
    {
        for(account a:acc)
        {
            if(a.Industry=='Banking' || a.Industry=='Healthcare')
            {
                a.Rating ='Warm';
            }
            
        }
    }
    //contacts
    public static void preventingAccountDeletion(list<account> triggeraccs)
    {
        list<id> accid = new list<id>();
        for(account a1:triggeraccs)
        {
            accid.add(a1.id);
        }
        list<account> accounts =[select id,
                                 (select id,AccountId from contacts)
                                 from account where id in:accid];
        
        for(account a:accounts)
        {
            if(a.contacts.size()>2)
            {
                a.adderror('You cant delete this reocrd');
            }
        }
    }
    //creating opportunity
    public static void updatingaccountopportunities(list<account> accs)
    {
        list<id> Accid = new list<id>();
        list<account> acc = new list<account>();
        for(account a:accs)
        {
            accid.add(a.Id);
        }
        
        acc=[select name,
             (select name from opportunities)
             from account where id in:accid];
        list<opportunity> op1 = new list<opportunity>();
        for(account acc1:acc)
        {
            if(acc1.opportunities.size()<1)
            {
                opportunity op =new opportunity();
                op.Type='New Customer';
                op.Name=acc1.Name+'testing';
                op.AccountId=acc1.Id;
                op.StageName='Qualification';
                op.CloseDate=system.today();
                
                op1.add(op);
            }
        }
        insert op1;
        
    }
    //Write a trigger on Account , when an account insert , automatically account billing address 
    //should populate into the account shipping address.
    public static void displayingBillingAddress(list<account> accnt)
    {
        list<id> accntid = new list<id>();
        for(account accs:accnt)
        {
            accntid.add(accs.id);
        }
        list<account> updatedaddress = new list<account>();
        list<account> a1=[select id,name,BillingStreet,BillingCity,BillingState
                          from account 
                          where id in:accntid];
        for(account accs1:a1)
        {
            accs1.ShippingStreet = accs1.BillingStreet;
            accs1.ShippingCity = accs1.BillingCity;
            accs1.ShippingState = accs1.BillingState;
            updatedaddress.add(accs1);
            
        }
        update updatedaddress;
    }
    
    //Once an account  is created an email should go to the admin user with specified text below.
    //An account has been created and name is "Account Name".
    public static void sendingEmail(list<account> newaccs)
    {
        list<string> accs2 = new list<string>();
        list<string> toaddress = new list<string>();
        for(account accs:newaccs)
        {
            accs2.add(accs.Name);
            
        }
        
        user u=[select id,name,email,Profile.name
                from user
                where Profile.name ='System Administrator'];
        toaddress.add(u.email);
        messaging.SingleEmailMessage emailobj = new messaging.SingleEmailMessage();
        emailobj.setToAddresses(toaddress);
        emailobj.setSubject('An Account is created');
        emailobj.setPlainTextBody('An account has been created and name is'+accs2);
        messaging.sendEmail(new messaging.SingleEmailMessage[]{emailobj});
        
    }
    /*Write a trigger on Account when an account is update when account type change send email to all contacts that your account information 
has been change.
Subject: Account Update Info
Body : Your account information has been updated successfully. Account Name : XYZ.*/
    public static void sendEmailToContactRelatedToAccount(List<Account> accList,Map<Id,Account> oMap)
    {
        list<Id> accId=new list<Id>();
        
        for(Account acc:accList)
        {
            Account oldAcc = oMap.get(acc.Id);
            if(acc.Type != oldAcc.Type)
            {
                accId.add(acc.Id);
            }
        }
        
        List<Contact> conList=[Select Id,LastName,Email,AccountId,Account.Name
                               from Contact
                               where AccountId=:accId ];
        List<Messaging.SingleEmailMessage> emailList= new List<Messaging.SingleEmailMessage>();
        
            for(Contact con:conList)
            {
                if(con.Email!=null)
                {
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    mail.setTargetObjectId(con.Id);
                    mail.toAddresses = new String[]{con.Email};
                        mail.setSubject(' Account Update Info.');
                    mail.setHtmlBody('Your account information has been updated successfully.<br/><br/>Account Name : '+con.Account.Name);
                    emailList.add(mail);
                }
            
        }
        if(emailList.size()>0){
            Messaging.SendEmailResult[] results = Messaging.sendEmail(emailList);
            if (results[0].success)
            {
                System.debug('The email was sent successfully.');
            } 
            else 
            {
                System.debug('The email failed to send: '+ results[0].errors[0].message);
            }
        }
        
        
        
        
        
    }
    //Write a trigger on Account when Account is update check all opportunity inside the account. Update all Opportunities Stage to 
    //close lost if an opportunity created date is greater than 30 days from today and stage not equal to close won
    public static void UpdatingAccountAndUpdatingopportunity(list<account> accs)
    {
        list<id> accid = new list<id>();
        for(account accs1:accs)
        {
            accid.add(accs1.id);
        }
        
        
        list<opportunity> opp1 = [select StageName, CreatedDate, CloseDate 
                                  from Opportunity 
                                  where AccountId in:accid];
        list<opportunity> updatedopp = new list<opportunity>();
        datetime d1=system.now()-2;
        for(opportunity opp2:opp1)
        {
            if(opp2.CreatedDate<d1 && opp2.StageName !='Closed Won')
            {
                opp2.StageName='Closed Lost'; 
                updatedopp.add(opp2);
            }
        }
        update updatedopp;
    }
    //When an account BillingCity is update , update all contacts MailingCity with account BillingCity
    public static void updatingBillingCityOnContact( List<Account> Acc)
    {
        Contact c = new Contact();
        for(Account a : Acc)
        {
            c = [Select MailingCity from Contact where AccountId = :a.Id LIMIT 1];
            c.MailingCity = a.BillingCity;
            update(c); 
        }
    }
    
    //Create a fields on Account (Asset Minimum Expiration Date)
    //Check the UsageEndDate on Asset and populate on Account Level Field if Asset minimum date are different
    public static void updatingUsageEndDateOnAccount(list<account> acc)
    {
        list<id> accid = new list<id>();
        for(account acc1:acc)
        {
            accid.add(acc1.id);
        }
        list<asset> a1 =  [select AccountId,UsageEndDate,
                           account.Asset_Minimum_Expiration_Date__c
                           from asset
                           where AccountId in:accid];
        for(account acc2:acc)
        {
            for(asset a2:a1)
            {
                if(a2.UsageEndDate!=acc2.Asset_Minimum_Expiration_Date__c)
                {
                    acc2.Asset_Minimum_Expiration_Date__c = a2.UsageEndDate;
                    
                }
            }
        }
        
    }
    
}