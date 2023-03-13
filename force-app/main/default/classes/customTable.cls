public with sharing class customTable 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Chef_Orders__c> getAllAccounts(){
        List<CCXR_Chef_Orders__c> accList =[Select Id,CCXR_Order_Id__c,CCXR_Table__c,
        CCXR_Items_ID__c,Order_status__c,Assignedtochef__c,CCXR_Accepted_By_Chef__c,CCXR_Items_ID__r.CCXR_Item_Name__c,CCXR_Order_Id__r.Name FROM CCXR_Chef_Orders__c where Order_status__c!=''];
        return accList;
    }
    @AuraEnabled
    public static void updatecheforderstatus(Id cat,Id cat1)
    {
        CCXR_Chef_Orders__c acc = new CCXR_Chef_Orders__c(Id = cat);
        acc.Order_status__c ='Preparing';
        acc.Assignedtochef__c=cat1;
        update acc;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Restaurant_Employee__c> getAccountNames(String accountName) {
      
      return [SELECT Id, Name,CCXR_Name__c,CCXR_Type_Of_Chef__c FROM CCXR_Restaurant_Employee__c where CCXR_Type_of_Employee__c='Chef' AND Id IN (SELECT CCXR_Restaurant_Employee__c FROM CCXR_Chef_Status__c WHERE CCXR_Chef_Current_Status__c= 'Available')];
    }
}