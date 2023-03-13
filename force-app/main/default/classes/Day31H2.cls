public class Day31H2 {
    public list<integer> l1 = new list<integer>{65,85,74,95,100};
    static list<integer> l2 =new list<integer>{55,68,42,57};
    static list<integer> l3 = new list<integer>();
    static set<decimal>  s1 =new set<decimal>{120.5,130.5,140.5,190.5};
    public set<decimal>  s2 =new set<decimal>{165.30,184.25,147.10,190.15};
    static set<decimal>  s3 = new set<decimal>();
        
    
        static
    {
        l2.add(90);
        //s2.add(100.32);//you cant add elements to s2 
        s1.add(200.21);
    }
    static
    {
        l3.addAll(l2);
        s3.addAll(s1);
    }
    
    /*static
    {
        l1.add(65);//you cant add elements to list l1 because it is not static
    }*/
    public Day31H2()
    {
        l3.remove(2);
        s3.remove(3);
    }
    public void nonStaticListAndSetMethod()
    {
        system.debug('non Static List l1:'+l1);
        system.debug('non Static List l2:'+l2);
        system.debug('non Static List l3:'+l3);
        system.debug('non Static Set s1:'+s1);
        system.debug('non Static Set s2:'+s2);
        system.debug('non Static Set s3:'+s3);
    }
    public static void StaticListAndSetMethod()
    {
        //system.debug(' Static List l1:'+l1);//you cant access l1 because it is not static
        system.debug(' Static List l2:'+l2);
        system.debug(' Static List l3:'+l3);
        system.debug(' Static Set s1:'+s1);
        //system.debug(' Static Set s2:'+s2);//you cant access s2 beacuse it is not static
        system.debug(' Static Set s3:'+s3);
    }

}

/*Day31H2 obj = new Day31CH2();
obj.nonStaticListAndSetMethod();
Day31H2.StaticListAndSetMethod();*/