public class Day31C1 {
    public integer x = 200;
    public integer y;
    public integer z;
    
    public void addNum(integer y)
    {
        this.y=y;
        system.debug('x ='+x);
        system.debug('y ='+y);
        system.debug('z ='+z);
        z = x+y;//you cant do math operations on null object
        system.debug('X ='+x);
        system.debug('y ='+y);
        system.debug('z ='+z);
    }

}
/*Day31C1 obj1 =new Day31C1();
system.debug('x='+obj1.x);
system.debug('y='+obj1.y);
system.debug('z='+obj1.z);
obj1.addNum(200);*/