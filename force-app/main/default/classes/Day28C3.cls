public class Day28C3 {
    
    public integer x = 100;
    public final integer y = 200;
    public static integer z = 300;
    public final static integer finalstaticvar = 400;
      
    public void m1()
    {
        system.debug('x from m1='+x);
        system.debug('y from m1='+y);
        system.debug('z from m1='+z);
        system.debug('final static variable ='+finalstaticvar);
        x =x + 10;
        //y = y + 20; //you cant update final members
        z = z + 30;
        //finalstaticvar = finalstaticvar-20;//you cant update final members
        system.debug('x from m1 after update='+x);
        //system.debug('y from m1 after update='+y);
        system.debug('z from m1 after update='+z);
        //system.debug('final static variable after update ='+finalstaticvar);
    }
    
    public void m2()
    {
        system.debug('x from m2='+x);
        system.debug('y from m2='+y);
        system.debug('z from m2='+z);
        system.debug('final static variable from m2 ='+finalstaticvar);
        x =x + 11;
        //y = y + 22;//you cant update finla members
        z = 33;
        //finalstaticvar = finalstaticvar-33;//you cant update final members
        system.debug('x from m2 after update='+x);
        system.debug('y from m2 after update='+y);
        system.debug('z from m2 after update='+z);
        system.debug('final static variable after update from m2 ='+finalstaticvar);
        
    }

}