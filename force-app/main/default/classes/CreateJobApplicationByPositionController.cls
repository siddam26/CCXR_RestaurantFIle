public class CreateJobApplicationByPositionController
{
    @AuraEnabled
    public static Job_Application__c createjobap(string status1 ,id pid1)
    {
        Job_Application__c jap=new Job_Application__c();
        jap.Status__c =status1;
        jap.Position__c=pid1;
        
        insert jap;
        return jap;
    }
}