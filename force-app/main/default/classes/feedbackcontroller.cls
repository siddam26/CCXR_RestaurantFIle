public with sharing class feedbackcontroller {
    @AuraEnabled
   public static CCXR_Feedback__c feedbackRecMethod(CCXR_Feedback__c accRec)
   {
   
            
        insert accRec;
        return accRec;

   
}
}