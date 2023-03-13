public with sharing class jobapplicationlwc {
    public jobapplicationlwc() {

    }
    @AuraEnabled
    public static Job_Application__c createJobapp(Job_Application__c japp){
        
            insert japp;
            return japp;
}
}