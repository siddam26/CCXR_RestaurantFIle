public class Ltng_Accountdata14Controller 
{
    @AuraEnabled
    public static list<Account> readaccounts()
    {
        list<Account> accs1=[select Name,Industry,Phone
                            from Account limit 10];
        
        return accs1;
    }

}