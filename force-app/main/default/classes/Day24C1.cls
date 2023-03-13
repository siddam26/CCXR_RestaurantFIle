public class Day24C1 {
        integer x=10;
        integer y=20;
        integer z;
    //void method without parameters
    public void addNum1(){
        system.debug('value of x is:'+x);
        system.debug('value of y is:'+y);
        system.debug('value of z is:'+z);
        z=x+y;
        system.debug('value of z after addition:'+z);
    }
        
    
    //void method with parameters
    public void addNum2(integer x,integer y){
        //integer z;
        system.debug('value of x received is:'+x);
        system.debug('value of y received is:'+y);
        system.debug('value of z is:'+z);
        z=x+y;
        system.debug('value of z after addition is:'+z);
    
        
        
    }
    //non void method without parameters
    public integer addNum3(){
        integer x=15;
        integer y=20;
        system.debug('value of x received is:'+x);
        system.debug('value of y received is:'+y);
        
         z=x+y;
      
        
        return z;
    }
    public void addNum3Return(){
        integer z1=addNum3();//method call
        system.debug('value of addnumber3return:'+z1);
    }
    //non void method with parameters
    public decimal addNum4(integer a,decimal b){
        decimal z;
        z=a+b;
        return z;
        
    }
    public void addNum4return(){
        decimal d=addNum4(5,2.5);
        system.debug('value of addNum4return is:'+d);
    }

}