public class Staticexample {
    public static integer x=100;
    public void m1()
    {
        system.debug('x from m1='+x);
        x = x + 1000;
        system.debug('x from m1 after update='+x);
    }
    public void m2()
    {
        system.debug('x from m2='+x);
        x=x+2000;
        system.debug('x from m2 from after update='+x);
    }
    

}