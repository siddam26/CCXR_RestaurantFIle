public class BillingAddressToShippingAddress {
    public static void copyShippingToBilling(list<Account> accs){
        
        for(Account a :accs){
            if(a.BillingCity!=null && a.BillingCountry!=null){
                a.shippingCity=a.BillingCity;
                a.shippingCountry=a.BillingCountry;
            }
        }
        
    }

}