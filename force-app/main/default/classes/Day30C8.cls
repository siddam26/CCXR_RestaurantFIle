public class Day30C8 {
    public integer x = 100;
    protected integer y = 1000;
    private integer z = 10000;
    
    public void printoutervariables()
    {
        system.debug('from public outer class:');
        system.debug('outer public x ='+x);
        system.debug('outer protected y ='+y);
        system.debug('outer private z ='+z);
    }
    private void printoutervariables2()
    {
        system.debug('from private outer class:');
        system.debug('outer public x ='+x);
        system.debug('outer protected y ='+y);
        system.debug('outer private z ='+z);
    }
    //inner class
    public class innerclass
    {
        public integer icx = 111;
        protected integer icy = 1111;
        private integer icz = 111111;
        
        public void printInnervariables()
            {
                system.debug('from public inner class:');
                system.debug('inner public icx='+icx);
                system.debug('inner protected icy='+icy);
                system.debug('inner private icz='+icz);
                /*system.debug('outer private z='+z);
                system.debug('outer protected y='+y);
                system.debug('outer public x='+x);*/ //you cant access outer class variables through innner class and vice versa
                
            }
    }

}
/*Day30C8 ocobj = new Day30C8();
system.debug('ocx ='+ocobj.x);
//system.debug('ocy ='+ocobj.y);
//system.debug('ocz ='+ocobj.z);
//you cant access private and protected variables beacuse you are executing in aw window which is outside the class
 Day30C8.innerclass icobj = new Day30C8.innerclass();
system.debug('inner x='+icobj.icx);*/