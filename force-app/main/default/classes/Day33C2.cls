//OFFSet And LIMIT
public class Day33C2 {
    
    list<Account> account1 = [select name,AnnualRevenue,phone,Industry 
                              from Account ORDER BY Industry];
    
    list<Account> account2 = [select name,AnnualRevenue,phone,Industry 
                              from Account ORDER BY Industry desc];
    
    list<Account> account3 = [select name,AnnualRevenue,phone,Industry 
                              from Account offset 5];
    
    list<Account> account4 = [select name,AnnualRevenue,phone,Industry 
                              from Account limit 6];
    
    list<Account> account5 = [select name,AnnualRevenue,phone,Industry 
                              from Account limit 4 offset 3];
    
    list<Position__c> positions =[select name,Min_Pay__c,Status__c,Location__c
                                 from Position__c
                                 order by Location__c asc,Status__c desc];
    
   /* list<Position__c> positions2 =[select Location__c,count(name)
                                 from Position__c
                                 group by Location__c asc];*/
    public void OrderAccountRecords()
    
    {
        system.debug('Ordered Accounts by industry Ascending:::');
        for(Account a:account1)
        {
            system.debug(a);
        }
        system.debug('Ordered Accounts by industry Descending:::');
        for(Account a:account2)
        {
            system.debug(a);
        }
        system.debug(' Accounts with offset 5:::');
        for(Account a:account3)
        {
            system.debug(a);
        }
         system.debug(' Accounts with Limit 6:::');
        for(Account a:account4)
        {
            system.debug(a);
        }
        system.debug(' Accounts with Limit 4 And Offset3:::');
        for(Account a:account5)//here you  will get records starting from 4 and ends with 7
        {
            system.debug(a);
        }
        system.debug('Ordered Position by Location then by status Ascending:::');
        for(Position__c p:positions)
        {
            system.debug(p);
        }
        
    }

}

/*Day33C2 obj =new Day33C2();
obj.OrderAccountRecords();*/