public class Day28H5 {
    
    integer quantity;
    decimal price;
    decimal billamount;
    decimal nettotalbillamount;
    decimal discountedamount;
    public void calculatediscount(integer quantity,decimal price)
    {
        this.quantity = quantity;
        this.price = price;
        billamount = quantity * price;
        if(billamount > 20000)
        {
           discountedamount= billamount * 0.20;
           nettotalbillamount = billamount - discountedamount;
            
        }
        else if(billamount > 15000 )
        {
             discountedamount= billamount * 0.15;
           nettotalbillamount = billamount - discountedamount;
        }
         else if(billamount > 10000 )
        {
             discountedamount= billamount * 0.10;
           nettotalbillamount = billamount - discountedamount;
        }
        else
        {
             discountedamount= billamount * 0;
            nettotalbillamount = billamount - discountedamount;          
            
        }
           display();
        
    }
            public void display()
            {
            system.debug('bill amount:'+billamount);
            system.debug('quantity:'+quantity);
            system.debug('price:'+price);
            system.debug('disocunt amount:'+discountedamount);
            system.debug('net total bill amount:'+nettotalbillamount);
    }

}