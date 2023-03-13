public class C9_Extension 
{
	public C9_Extension(ApexPages.StandardController con)
    {
        
    }
    string hello='Welcome';
    list<Account> camps=[select name,industry,annualrevenue,
                         (Select id,lastname from Contacts),
                         (Select id,name from Opportunities)
                         from Account];
    public list<Account> getcamps()
    {
        return camps;
    }
    public string gethello()
    {
        return hello;
    }
}