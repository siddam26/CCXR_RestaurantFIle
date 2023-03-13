public class exam5 
{
    public void test()
    {
        List<Account>  acclist=[select Id, Name from Account];
        for(Account a:acclist)
        {
            List <Contact> cont=[select Id, LastName from Contact where AccountId =: a.Id];
            for(contact c: cont)
            {
                c.LastName='test';
            }
            update cont;
        }    
    }   
}