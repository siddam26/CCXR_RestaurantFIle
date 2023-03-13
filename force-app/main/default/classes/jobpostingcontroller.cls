public with sharing class jobpostingcontroller {
    @AuraEnabled
    public static Job_Posting__c accountRecMethod(Job_Posting__c accRec){
        try {
            
            insert accRec;
            return accRec;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

       
    }
}