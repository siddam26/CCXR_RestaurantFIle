global virtual class Day30H1 {
    integer l;
    integer w;
    decimal a;
    decimal r;
    decimal pi;
    
    public  void rectangle(integer l,integer w)
        
    {
        this.l=l;
        this.w=w;
        system.debug(' length='+l);
        system.debug(' breadth='+w);
        decimal Area=l*w;
        system.debug('area of rectangle is:'+Area);
    }
    public virtual void square( decimal a)
    {
        this.a=a;
        system.debug('side='+a);
        
        decimal area = a*a;
        system.debug('area of square is:'+area);
    }
    public virtual void circle(decimal pi,decimal r)
    {
        this.pi=pi;
         this.r=r;
        system.debug('radius='+r);
        decimal area = pi*r*r;
        system.debug('area of circle:'+area);
    }

}
/*Day30H2 obj =new Day30H2();
obj.calculatearea(10);*/