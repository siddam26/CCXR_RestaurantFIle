public class Day35C5 {
    
    //display accounts from apparel industry and no of employees>100
    public void displayAccounts()
    {
        list<Account> a1=[select Name,Industry,NumberOfEmployees
                         from Account
                         where Industry='Apparel' AND NumberOfEmployees>100];
        
        system.debug('Accounts are::::');
        for(Account a2:a1)
        {
            system.debug('Account Name:'+a2.Name);
            system.debug('Account Industry:'+a2.Industry);
            system.debug('Account no of employees:'+a2.NumberOfEmployees);
        }
    }

}

/*Day35C5 obj =new Day35C5();
obj.displayAccounts();*/