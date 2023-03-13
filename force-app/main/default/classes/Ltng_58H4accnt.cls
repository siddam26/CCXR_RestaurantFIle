public class Ltng_58H4accnt
{
    @AuraEnabled
    public static list<Account> readaccounts(string searchindustry)
    {
        string searchindus = searchindustry;
        list<account> accs =[select Name,Industry,Phone from Account where Industry=:searchindus  limit 10];
        return accs;
        
    }

}