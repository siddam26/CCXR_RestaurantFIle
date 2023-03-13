public class OpportunityHandler
{
   	public static void updateAccount(List<Opportunity> ops)
    {
        list<Account> accs=new list<Account>();
        list<Account> updateaccs=new list<Account>();
        
        list<id> oppIds=new list<id>();
        list<id> oppOwnerIds=new list<id>();
        
        for(Opportunity o:ops)
        {
            if(o.Amount!=null)
            {
                if(o.Amount>5000000)
                {
                    oppIds.add(o.AccountId);
                }
                if(o.Amount>10000000)
                {
                    oppOwnerIds.add(o.OwnerId);
                }
            }
        }
    	
        accs=[select name,rating from Account where id in:oppIds];
        
        for(Account a:accs)
        {
            a.rating='Hot';
            updateaccs.add(a);
        }
        update updateaccs;
    //email
        messaging.SingleEmailMessage email=new messaging.SingleEmailMessage();
        list<string> toAddress=new list<string>();
        list<user> oppowneremail=[select email from user where id In :oppOwnerIds];
        
        for(user u:oppowneremail)
        {
            toAddress.add(u.email);
        }
        if(!toAddress.isempty())
        {
        email.setToAddresses(toAddress);
        email.setSubject('High Value Opportunity Alert');
        email.setPlainTextBody('Please follow up high value op');
        messaging.sendEmail(new messaging.Email[] {email});
            
        }
        
    }
     //trigger to populate total ooportunity amount with all the opportunities assosiated with that account
    public static void calculatingTotalOpportunityAmount(list<opportunity> opps)
    {
        list<account> updatedaccount = new list<account>();
        list<id> accid = new list<id>();
        for(opportunity opps1:opps)
        {
            if(opps1.AccountId !=NULL)
            {
                accid.add(opps1.AccountId);
            }
        }
            list<account> acs =[select id,name,TotalOpportunityAmount__c,
                       (select Amount from opportunities)
                       from account where id in:accid];
            for(account a1:acs)
        {
            if(a1.TotalOpportunityAmount__c == NULL)
            {
                a1.TotalOpportunityAmount__c = 0;
            }
            list<Opportunity> op1 = a1.Opportunities;
            if(op1.size()>0)
            {
            for(Opportunity op2:op1)
            {
                
                
                 a1.TotalOpportunityAmount__c = a1.TotalOpportunityAmount__c+ op2.Amount;
                updatedaccount.add(a1);
                
                
            }
            }
        
            
        }
        update updatedaccount;
    }
    
   public static void addOppOwnerToAccountTeam(List<Opportunity> oppList)
    {
        Set<Id> idset = new Set<Id>();
       List<Id> oppOwnerId = new List<Id>();
        for(Opportunity ops : oppList)
        {
            if( ops.Probability==50)
            {
               idset.add(ops.AccountId);
               oppOwnerId.add(ops.Id);
            }
       
        }
        List<AccountTeamMember> acttm = [SELECT Id, AccountId, UserId, User.Name, TeamMemberRole
                                    FROM AccountTeamMember
                                    WHERE AccountId IN :idset AND UserId In :oppOwnerId];
        for(Opportunity op : oppList)
        {
           
            if(!acttm.isEmpty())
            {
             AccountTeamMember acs = new AccountTeamMember();
            acs.AccountId = op.AccountId;
             
            }
           
        }

    }
    //Add a filed Multi select Pick list on Account And Opportunity as well and add values A,B,C,D,F
	//Now if we update an Opportunity with this multi select value Account should also update with same picklist values
	public static void updatingaccountValue(list<opportunity> opps)
    {
        list<id> accid = new list<id>();
        for(opportunity opps1:opps)
        {
            accid.add(opps1.accountid);
        }
        account a=[select name,industry,Alphabets__c 
                   from account where id in:accid];
        
           for(opportunity opps2:opps)
           {
               a.Alphabets__c=opps2.Alphabets__c;
               
           }
            update a;
            
        }
    //Create a field on Account and Opportunity -- Minimum And Max Date ,
	//Once an Opportunity is delete insert update Update Account Min And Max Date from the All Opportunity
	public static void dispalyingMinAndMaxDate(list<opportunity> opp)
    {
        list<id> accid = new list<id>();
        for(opportunity opp1:opp)
        {
            accid.add(opp1.accountid);
        }
        
        account a =[select id,Min_Date__c,Max_Date__c,Name
                   from account
                   where id in:accid];
        for(opportunity opp2:opp)
        {
            a.Min_Date__c = opp2.Min_date__c;
            a.Max_Date__c = opp2.Max_Date__c;
            update opp2;
        }
    }

    

   
    


}

//HighOppAlertTrigger