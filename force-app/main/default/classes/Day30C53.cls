public class Day30C53 implements Day30C4 {
    public static void calculatediscount(integer q,integer p,string t)
    {
        integer amount;
        decimal discount;
        decimal discountedamount;
        decimal amountafterdiscount;
        amount = q*p;
        discount = 0.05;
        discountedamount = amount * discount;
        amountafterdiscount = amount - discountedamount;
        system.debug('quantity='+q);
        system.debug('price='+p);
        system.debug('Ctype='+t);
        system.debug('Amount='+amount);
        system.debug('discount='+discount);
        system.debug('discountedamount='+discountedamount);
        system.debug('amountafterdiscount='+amountafterdiscount);
    }

}