public class Day34C2 {

    Integer i=10;
    integer z;
    decimal d;
    decimal d2=199.9;
    sObject s;
    sobject s1=new Account();
    Sobject s2;
    list<account> sobjs=new list<Sobject>();
    public void typecast()
    {
        s=[select Name from account limit 1];
        System.debug(s);
        s1=[select name from account where name='Dxc'];
        System.debug(s1);
        s1=[select lastName from contact limit 1];
        System.debug(s1);
        //account a=(account) s;
        // the following generates a runtime error 
        //contact c=(contact) s;
        //System.debug(s);
        
    }
}
/*Day34C2 obj3 = new Day34C2();
obj3.typecast();*/