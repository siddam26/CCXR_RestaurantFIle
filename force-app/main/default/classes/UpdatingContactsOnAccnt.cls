public class UpdatingContactsOnAccnt 
{
    
    public  static void countContacts(List<Contact> conList)  
    {
        List<Account> accList = new List<Account>();
        List<Account> Updatedaccountlist = new List<Account>();
        for (Contact con : conList) 
        {
            accList = [select Id,name,Assosiated_contacts__c, 
                       (select Id, name from Contacts) 
                       from Account where Id =: con.AccountId];
        }
        for (Account acc : accList)
        {
            acc.Assosiated_contacts__c = acc.Contacts.size() ;
            Updatedaccountlist.add(acc);
        }
        update Updatedaccountlist;
        
    }
    
    public static void checkingLastname(list<contact> con)
    {
      
        for(Contact c : con)
            {
                if(!c.LastName.isAllUpperCase())
                {
                   c.LastName.addError('Please enter the lastname in uppercase') ;
                }
 
            }
        } 
    //Write a trigger on Contact , when a contact insert an email should be sent to contact email id with specified template
     public static void sendingEmailWhenContactIsInserted(list<contact> con)
     {
         List<id> conid = new List<id>();
         list<string> toaddress = new list<string>();
         for(contact c:con)
         {
             conid.add(c.id);
         }
         EmailTemplate et=[select id,name 
                           from EmailTemplate
                          where name='sendingaemailwhencontactisinserted'];
         messaging.MassEmailMessage sendemail = new  messaging.MassEmailMessage();
         sendemail.setTargetObjectIds(conid);
         sendemail.setTemplateId(et.Id);
         messaging.sendEmail(new messaging.MassEmailMessage[]{sendemail});
  
     }
    
    //Write a trigger on contact to prevent duplicate records based on Contact Email & Contact Phone
    public static void preventingDuplicateRecords(list<contact> cons)
    {
      /*  set<string> conemail = new set<string>();
        set<string> conphone = new set<string>();
        for(contact newc:cons)
        {
            if(newc.email!=NULL && newc.Phone!=NULL)
            {
                conemail.add(newc.Email);
                conphone.add(newc.Phone);
            }
        }
            list<contact> oldcon = new list<contact>();
            oldcon = [select phone,email 
                      from contact
                     where email in:conemail OR phone in:conphone];
            
            for(contact vercon:cons)
            {
                if(oldcon.size()>0)
                {
                    vercon.Email.adderror('duplicate email found,use another email');
                    vercon.Phone.adderror('duplicate phonenumber found,use another phone number');
                }
                    
            }
            
         */   
        
    }
    //When Contact update collect all opportunity Amount And Update this amount on Account Level Field (Total Opportunity Amount)
    public static void updatetotaloppwhenconcontactisupdated(list<contact> cons)
    {
      
        decimal totalopp=0;
        list<id> accids=new list<id>();
        for(contact c:cons)
        {  
            accids.add(c.AccountId);
        }
        list<account> accs=[select name,(select name,amount from Opportunities) from account where id in:accids];

        for(account a:accs)
        {
            list<Opportunity> opps=a.Opportunities;
            for(Opportunity o:opps)
            {
                totalopp=totalopp+o.amount;
                
            }
            a.TotalOpportunityAmount__c = totalopp;
            update a;
            
            
        }
            
            
            
     
        
    }
 
    
    }
//updating contacts