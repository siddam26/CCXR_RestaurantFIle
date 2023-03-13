public class createaccount {
@AuraEnabled
    public static void accountacc(String name,string phone,String ind,decimal ar)
    {
        account accs=new account();
        accs.Name=name;
        accs.Phone=phone;
        accs.industry=ind;
        accs.AnnualRevenue=ar;
        insert accs;
        
    }
}