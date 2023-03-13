public with sharing class day73H3 {
    

    
    @AuraEnabled
    public static list<Position__c> createAccounts(list<Position__c> accountList)
    {
        
            insert accountList;
            return accountList;
        
       
    }
    

}