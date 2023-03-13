public class Day35H2 {
    
    //Write an Apex class to display the contacts  of Banking industry Accounts.
    list<Contact> c1=[select LastName,Phone,
                     Account.Industry
                     from Contact 
                      where Account.Industry='Banking'];
    public void displayContactsOfBankingIndustry()
    {
        for(Contact c2:c1)
        {
            system.debug('Accounts Industry:'+c2.Account.Industry);
            system.debug('Contact LastName:'+c2.LastName);
            system.debug('Contact Phone:'+c2.Phone);
        }
    }

}

/*Day35H2 obj = new Day35H2();
obj.displayContactsOfBankingIndustry();*/