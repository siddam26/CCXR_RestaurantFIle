public class Day31H1 {
    integer l;
    integer b;
    decimal a;
    decimal r;
    final decimal pi=3.14;
    
    public Day31H1(integer l,integer b)
    {
        this.l=l;
        this.b=b;
        decimal Area=l*b;
        system.debug('Area of Rectangle is:'+Area);
    }
    public Day31H1(integer a)
    {
        this.a=a;
        system.debug('side='+a);
        decimal Area = a*a;
        system.debug('area of square:'+Area);
       
    }
    public Day31H1(decimal r)
    {
        
        this.r = r;
        system.debug('radius='+r);
        decimal area = pi*r*r;
        system.debug('area of circle:'+Area);
    }
    
  

}

/*Day31H1 obj2 =new Day31H1(10.5);*/