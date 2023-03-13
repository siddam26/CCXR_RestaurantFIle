//schedulable example
public class Day38C4 implements schedulable {
    public void execute(schedulablecontext sc)
    {
        list<account> updateaccounts = new list<account>();
        list<account> accounts = [select name,industry
                                 from account
                                  where name like '%Account%'];
        for(account a:accounts)
        {
            a.industry ='Electronics';
            updateaccounts.add(a);
        }
        update updateaccounts;
 
}
}
//do declaratively