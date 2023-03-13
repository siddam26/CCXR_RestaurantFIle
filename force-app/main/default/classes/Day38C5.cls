//schedulable example2

public class Day38C5 implements schedulable {
    public void execute(schedulablecontext sc)
    {
        list<account> updateaccounts = new list<account>();
        list<account> accounts = [select name,industry
                                 from account
                                  where name like '%Account%'];
        
        for(account a:accounts)
        {
            a.phone='4545';
            updateaccounts.add(a);
        }
        update updateaccounts;
    }
    
    

}