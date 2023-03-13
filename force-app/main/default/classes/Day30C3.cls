public class Day30C3 {
    public integer a{get;}
    public integer b{set;}
    public integer c{get;set;}
    public integer d{get{
                           return 100;
                        }
                     set{
                           d=200;
                         }    
                    }
    public integer getA()
    {
        return a;
    }
    public void setB(integer b)
    {
        this.b=b;
    }
    public integer getset(integer c)
    {
        this.c = c;
        return c;
    }

}

/*Day30C3 obj3 = new Day30C3();
obj3.c=100;
system.debug('A='+obj3.A);
system.debug('C='+obj3.c);
system.debug('D='+obj3.D);*/