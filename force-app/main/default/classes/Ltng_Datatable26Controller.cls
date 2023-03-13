public class Ltng_Datatable26Controller 
{
    @AuraEnabled
    public static list<Job_Application__c> japp(Id posid)
    {
        list<Job_Application__c> japp1 =[select Name,Status__c,Candidate__r.Last_Name__c,Position__r.Name
                                        from Job_Application__c
                                        where Position__r.Id =:posid];
        return japp1;
    }

}