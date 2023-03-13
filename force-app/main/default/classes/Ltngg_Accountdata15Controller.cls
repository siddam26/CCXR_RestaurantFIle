public class Ltngg_Accountdata15Controller 
{
    @AuraEnabled
    public static list<Account> readaccounts(string searchindustry)
    {
        string searchindus = searchindustry;
        list<account> accs =[select Name,Industry,Phone from Account where Industry=:searchindus  limit 20];
        return accs;
        
    }

}