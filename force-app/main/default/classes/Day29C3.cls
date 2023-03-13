//method overloading
public class Day29C3 {
    public integer z;
    public decimal d;
    public string s;
    public void addvalues(integer x,integer y)
    {
        system.debug('x='+x);
        system.debug('y='+y);
        z=x+y;
        display();
    }
    public void addvalues(integer x, decimal d1)
    {
        system.debug('x='+x);
        system.debug('d1='+d1);
        d=x-d1;
        display();
    }
    public void addvalues(string s1 , string s2)
    {
        system.debug('s1='+s1);
        system.debug('s2='+s2);
        s=s1+s2;
        display();
    }
    public void display()
    {
        system.debug('z='+z);
        system.debug('d='+d);
        system.debug('s='+s);
    }

}


/*Day29C3 obj29c3 = new Day29C3();
obj29c3.addvalues('kaira','tanhaji');
obj29c3.addvalues(25,35.6);
obj29c3.addvalues(70,80);*/