public with sharing class customertable 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Customer_Table_Status__c> getAllAccountsas(){
        List<CCXR_Customer_Table_Status__c> accList =[select Name,Customer_Table_Status__c,CCXR_Customer__r.CCXR_Name__c,CCXR_Table__r.Name,CCXR_Customer__r.No_Of_Persons__c from  CCXR_Customer_Table_Status__c];
        return accList;
    }
    
}