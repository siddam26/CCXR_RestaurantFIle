public class Ltng_Leaddata15Controller
{
    @AuraEnabled
    public static list<lead> readLeads(string searchleadindus)
    {
        string searchindus = searchleadindus;
        list<lead> l1 =[select Name,Phone,Industry from lead where Industry=:searchindus limit 20];
        return l1;
    }

}