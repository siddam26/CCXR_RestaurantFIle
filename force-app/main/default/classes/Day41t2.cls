public class Day41t2 {
    //Write an Apex class to display the Opportunities with Stage as 'Closed Won' of all Accounts  with Entertainment industry
    public void display()
    {
        list<Opportunity> op1 =[select Name,Type,Amount,StageName,CloseDate,
                                account.Name,account.Industry
                                from Opportunity where StageName='Closed Won' AND account.Industry ='Entertainment'];
        for(Opportunity op2:op1)
        {
            system.debug('Name:'+op2.Name);
            system.debug('stage name:'+op2.StageName);
            system.debug('Industry:'+op2.account.Industry);
        }
    }
    

}

/*Day41t2 obj =new Day41t2();
obj.display();*/