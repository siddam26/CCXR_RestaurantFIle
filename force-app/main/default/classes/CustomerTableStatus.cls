public with sharing class CustomerTableStatus 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Customer_Table_Status__c> getCustomerTableStatus(){
        List<CCXR_Customer_Table_Status__c> accList =[select Name,CCXR_Customer__r.CCXR_Name__c,CCXR_Table__r.Name,
        CCXR_Customer__r.No_Of_Persons__c,
        Customer_Table_Status__c,Token_Number__c from  CCXR_Customer_Table_Status__c where Customer_Table_Status__c='Occupied'];
        return accList;
    }
}