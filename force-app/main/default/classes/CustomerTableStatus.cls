public with sharing class CustomerTableStatus 
{
    @AuraEnabled(cacheable=true)
    public static list<CCXR_Customer_Table_Status__c> getCustomer()
    {
        list<CCXR_Customer_Table_Status__c> accs=[select Name,CCXR_Table__c,Customer_Table_Status__c,CCXR_Customer__r.CCXR_Name__c
        from  CCXR_Customer_Table_Status__c ];
        return accs;
    }
}