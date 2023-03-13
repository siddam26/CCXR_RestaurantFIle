public class Day32C2
{
    public static decimal openingbalance=5000;
   
    
    public  void salesamount(decimal amount,string isreturn)
    {
        if(isreturn=='return')
        {
            system.debug('Sales return amount='+amount);
            openingbalance=openingbalance-amount;
        }
        else
        {
            system.debug('Sales  amount='+amount);
            openingbalance=openingbalance+amount;
        }
        //system.debug('from credit amount='+Accountbalance);
    }
    public  void purchaseamount(decimal amount,string isreturn)
    {
        if(isreturn=='return')
        {
            system.debug('purchase return amount='+amount);
            openingbalance=openingbalance+amount;
        }
        else
        {
           system.debug('purchase  amount='+amount);
           openingbalance=openingbalance-amount;
        }
        //system.debug('from credit amount='+Accountbalance);
    }

    public static void displayaccountbalance()
    {
        system.debug('displayaccountbalanceusingsatticmethod='+openingbalance);
        
    }
    static
    {
       system.debug('Opening Balance='+openingbalance); 
        
    }
    
}
/*
Day32c1 obj=new Day32c1();
obj.salesamount(10000,'ds');
obj.purchaseamount(2000,'sa');
obj.salesamount(1000,'return');
obj.purchaseamount(500,'return');
Day32c1.displayaccountbalance();
*/