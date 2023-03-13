public class Day24H1A {
    public void discount(integer quantity,decimal unitssold,decimal discount){
             system.debug('quanity:'+quantity);
        	 system.debug('units sold:'+unitssold);
        	decimal totalamount=  quantity * unitssold ;
             system.debug('Total Amount:'+totalamount);
              system.debug('Discount percentage:'+discount);
         decimal discount1=totalamount * discount ;
        system.debug('Discounted amount:'+discount1);
             Decimal Nettotalamount = totalamount - discount1;
                //return Nettotalamount;
          system.debug('Net total amaount:'+Nettotalamount);
        
        
        }
   /* public void Nettotalreturn(){
        decimal d=discount(25,100,0.10);
        system.debug('Net Total Amount:'+d);
    }*/
    
    

}