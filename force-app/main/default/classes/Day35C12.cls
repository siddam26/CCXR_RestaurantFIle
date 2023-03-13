public class Day35C12 {
    
    list<Case> c1=[select CaseNumber,Reason,Status,
                   Account.Name,Account.AnnualRevenue
                   from Case where Status='Closed'];
    
    public void displayCloasedCases()
    {
        for(Case c2:c1)
        {
            system.debug('case number:'+c2.CaseNumber);
            system.debug('Cases status:'+c2.Status);
            system.debug('Account Name:'+c2.Account.Name);
            system.debug('Account Annual Revenue:'+c2.Account.AnnualRevenue);
        }
    }
    
    
}
/*Day35C12 obj =new Day35C12();
obj.displayCloasedCases();*/