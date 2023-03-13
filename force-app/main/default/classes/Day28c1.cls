public class Day28c1 {
    public integer x = 100;
    public integer y = 200;
    public integer z = 300;
    
    public void scopeofvariable()
    {
        system.debug('Class variable x ='+x);
        system.debug('Class variable y ='+y);
        system.debug('Class variable z ='+z);
        
        integer x = 33;
        integer y = 55;
        system.debug('local variable x ='+x);
        system.debug('local variable y ='+y);
        system.debug('local variable z ='+z);
        
        if(x>30)
        {
            //integer y = 530;/youi cant update y value within in same block
            integer a= 1000;
            system.debug('variable A from IF block='+a);
        }
        //system.debug('variable A from IF block='+a);//you cant access a value here
    }
    public void displayclassvariable()
    {
        system.debug('Class variable x ='+x);
        system.debug('Class variable y ='+y);
    }
        

}