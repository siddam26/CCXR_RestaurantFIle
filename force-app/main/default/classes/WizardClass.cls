public class WizardClass 
{
    account a = new account();
    contact c = new contact();
    opportunity o = new opportunity();
    public account geta()
    {
        return a;
    }
    public contact getc()
    {
        return c;
    }
    
    public opportunity geto()
    {
        return o;
    }
    public pageReference gotopage1()
    {
        return Page.gotopage1;
    }
    public pageReference gotopage2()
    {
        return Page.gotopage2;
    }
    public pageReference gotopag3()
    {
        return Page.gotopag3;
    }
     public pageReference gotopage4()
    {
        return Page.gotopage4;
    }
     public pageReference SaveNow()
    {
       insert a;
        c.AccountId=a.id;
        insert c;
        O.AccountId=a.id;
        insert o;
        return Page.SaveNow;
    }
   
    
    
}