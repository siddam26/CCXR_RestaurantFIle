public class Day28C2 {
    
    public integer x = 100;
    public integer y = 200;
    public integer z = 300;
    
    public void m1()
    {
        system.debug('x from m1='+x);
        system.debug('y from m1='+y);
        system.debug('z from m1='+z);
        
        x = x + 10;
        y = y + 20;
        z = z + 30;
        system.debug('vlaue of x after update='+x);
        system.debug('vlaue of y after update='+y);
        system.debug('vlaue of z after update='+z);
    }
    
    public void m2()
    {
        
        system.debug('x from m2 ='+x);
        system.debug('y from m2 ='+y);
        system.debug('z from m2 ='+z);
        
        x = x +5;
        y = y + 30;
        z = z + 45;
        
        system.debug('vlaue of x after update in m2='+x);
        system.debug('vlaue of y after update in m2='+y);
        system.debug('vlaue of z after update in m2='+z);
              
        
    }

}

/*Day28C2 obj2 =new Day28C2();
Day28C2 obj3 =new Day28C2();
obj2.m1();
obj2.m2();
obj3.m1();
obj3.m2();*/