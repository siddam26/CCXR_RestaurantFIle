public with sharing class listpositions {
    public listpositions() {

    }
     @AuraEnabled
        public static list<Position__c> createAccounts(list<Position__c> accountList)
        {
            
                insert accountList;
                return accountList;
            
           
        }
        
    
    }