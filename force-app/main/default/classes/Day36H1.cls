public class Day36H1 {
    //Write an Apex class to demonstrate  save point result of a transaction which includes an update followed 
    //by  delete actions .Save are set before update and before delete actions.
    public void candiatesavepointRollback()
    {
        Lead c1=[select Company,LastName
                   from Lead
                   where LastName='jason' ALL ROWS];
        system.debug('Lead data:'+c1);
        savepoint sp1=database.setSavepoint();
        c1.Company='Accenture';
        update c1;
        c1=[select Company,LastName 
           from Lead
           where LastName='jason' ALL ROWS];
        system.debug('Lead data='+c1);
        savepoint sp2 = database.setSavepoint();
        delete c1;
        c1=[select Company,LastName 
           from Lead
           where LastName='jason' ALL ROWS];
        system.debug('Lead data='+c1);
        database.rollback(sp1);
        c1=[select Company,LastName
           from Lead	
           where LastName='jason' ALL ROWS];
        system.debug('Lead data='+c1);
    }
}