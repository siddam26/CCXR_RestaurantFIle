public class Day29H1 {

       public Decimal decimalValue;
       public void display(Decimal decimalValue){
        this.decimalValue = decimalValue;
        System.debug('Decimal value from method befor update = '+decimalValue);
        multiplication(decimalValue);
        System.debug('Decimal value from method display after update ='+decimalValue);
    }
     public void multiplication(Decimal x){
        system.debug('X from multiplication before update = '+x);
        x = x * 250;
        System.debug('X * 250 = '+ x);
    }
    
}

/*Day29H1 obj1 = new Day29H1();

obj1.display(20.5);*/