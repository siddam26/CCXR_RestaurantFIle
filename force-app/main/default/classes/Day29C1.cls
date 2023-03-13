//pass by value example
public class Day29C1 {
     public integer x;
    public void m1(integer y)
    {
        system.debug('y from m1 before update:'+y);
        y=y-10;
        system.debug('y from m1 after update:'+y);
    }
    public void display(integer x)
    {
        this.x=x;
        system.debug('x from display before method call='+x);
        m1(x);
        system.debug('x from display after method call='+x);//value doesnt reflect in pass by value
    }
}