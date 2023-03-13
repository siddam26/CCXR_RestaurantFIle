//pass by reference
public class Day29C2 {
    public list<integer>l1;
    public void m1(list<integer>y)
    {
        system.debug('y from m1 before update='+y);
        y.add(11);
        system.debug('y from m1 after update='+y);
    }
    public void display(list<integer>l1)
    {
        this.l1=l1;
        system.debug('l1 from display before method call='+l1);
        m1(l1);
        system.debug('l1 from display after method call='+l1);
    }

}