public class Day31C4 {
    public integer a=100;
    public static integer b=20;
    public static integer c;
    public static string s;
    public static integer d;
    public static integer e;
    public static integer dc;
    
    static
    {
     c=200;   
    }
    static
    {
        d=55+b;
    }
    static
    {
        e = calculate();
    }
    public Day31C4()
    {
        dc = 525;
    }
    public void nonStaticMethod()
    {
        system.debug('Non static b='+b);
        system.debug('b static b ='+b);
        system.debug('c static c ='+c);
        system.debug('d static d ='+d);
        system.debug('s static s ='+s);
        system.debug('dc static dc ='+dc);
    }
    public static void staticMethod()
    {
        //system.debug('Non static b='+a);//you cant access non static variables in static method
        system.debug('b static b ='+b);
        system.debug('c static c ='+c);
        system.debug('d static d ='+d);
        system.debug('s static s ='+s);
        system.debug('dc static dc ='+dc);
        s='commercecx';
        system.debug('static s='+s);
        system.debug('static dc='+dc);
    }
    public static integer calculate()
    {
        return 300;
    }

}
/*Day31C4 obj = new Day31C4();
obj.nonStaticMethod();
Day31C4.staticMethod();*/