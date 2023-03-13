//empty constructor
public class Day31C2 {
    public integer x = 100;
    public integer y;
    public integer z;
    
    public Day31C2()
    {
        this.y=200;
    }
    public void addnum()
    {
        system.debug('x='+x);
        system.debug('y='+y);
        system.debug('x='+x);
         z = x+y;//you cant do math operations on null object
        system.debug('X ='+x);
        system.debug('y ='+y);
        system.debug('z ='+z);
        
    }
   
}
/*Day31C2 obj2 =new Day31C2();
system.debug('x='+obj2.x);
system.debug('y='+obj2.y);
system.debug('z='+obj2.z);*/