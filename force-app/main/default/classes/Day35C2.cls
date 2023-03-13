public class Day35C2 {
    //display new cases
    public void displayNewCases()
    {
        list<Case> c1 =[select AccountId,Priority,Status
                       from Case
                       where Status='New'];
        
        system.debug('New Cases::');
        for(Case c2:c1)
        {
            system.debug('Case name:'+c2.AccountId);
            system.debug('Case Priority:'+c2.Priority);
            system.debug('case status:'+c2.Status);
        }
        
    }
    

}
/*Day35C2 obj = new Day35C2();
obj.displayNewCases();*/