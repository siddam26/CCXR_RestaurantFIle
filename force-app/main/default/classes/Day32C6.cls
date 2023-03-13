public class Day32C6 {
     public string location;
    public void displayRecords(String location)
    {
        this.location = location;
        list<Position__c> pos =[select name , Location__c , Min_Pay__c from Position__c 
                                  where Location__c =:location];
        system.debug('Binding Variable Result::::');
        for(Position__c p : pos)
        {
            system.debug(p);
        }
    }
    public void display()
    {
        list<Account> accounts1 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'A%'];
        list<Account> accounts2 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'Account%'];
        list<Account> accounts3 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'%test%'];
        list<Account> accounts4 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'_n%'];
        list<Account> accounts5 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'%ltd'];
        list<Account> accounts6 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'___'];
        list<Account> accounts7 =[select Name , AnnualRevenue, Industry from Account
                                    where Name like'_%'];
        
        
        system.debug('Accounts with Names starting with A::::');
        for(Account a : accounts1)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names starting with Account::::');
         for(Account a : accounts2)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names having test word ::::');
         for(Account a : accounts3)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names having n as second character::::');
         for(Account a : accounts4)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names ending with ltd word::::');
         for(Account a : accounts5)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names having 3 letters only::::');
         for(Account a : accounts6)
        {
            system.debug(a);
        }
         system.debug('Accounts with Names having atleast 3 characters::::');
         for(Account a : accounts7)
        {
            system.debug(a);
        }
        
    }

}

/*Day32C6 obj =new Day32C6();
obj.display();*/