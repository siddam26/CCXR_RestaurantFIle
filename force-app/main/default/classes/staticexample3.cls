public class staticexample3 {
    public static void m4()
    {
        system.debug('x from m3:'+Staticexample.x);
        Staticexample.x = Staticexample.x + 200;
        system.debug('x from m3 after update='+Staticexample.x);
    }

}

/*Staticexample2.m3();
Staticexample obj = new Staticexample();
obj.m1();
obj.m2();
Staticexample3.m4();*/