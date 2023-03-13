public class LtngH1_JobPostingController 
{
      @AuraEnabled
    public static Job_Posting__c readjp(id pid,String emp)
    {
        
        Job_Posting__c jp=new Job_Posting__c();
        jp.Employement_Website_Name__c=emp;
        jp.Position__c=pid;
        insert jp;
        return jp;
    }

}