public with sharing class customTable 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Chef_Orders__c> getAllAccounts(){
        List<CCXR_Chef_Orders__c> accList =[Select Id,CCXR_Order_Id__c,CCXR_Quantity__c,Assignedtochef__r.Name,
        CCXR_Items_ID__c,CCXR_Items_ID__r.CCXR_Item_Name__c,CCXR_Table__c,Order_status__c,button__c,button1__c,Assignedtochef__c,CCXR_Accepted_By_Chef__c,CCXR_Order_Id__r.Name FROM CCXR_Chef_Orders__c];
        return accList;
    }
    @AuraEnabled
    public static void updatecheforderstatus(Id cat,Id cat1,boolean but1,boolean but2 )
    {
        CCXR_Chef_Orders__c acc = new CCXR_Chef_Orders__c(Id = cat);
        acc.Order_status__c ='Preparing';
        acc.Assignedtochef__c=cat1;
        acc.button__c=but1;
        acc.button1__c=but2;
        update acc;
    }
    @AuraEnabled
    public static void updatecheforderstatus1(Id cat,boolean but2)
    {
        CCXR_Chef_Orders__c acc = new CCXR_Chef_Orders__c(Id = cat);
        acc.Order_status__c ='Ready';
        acc.button1__c=but2;
        
        update acc;
    }
    @AuraEnabled
    public static void updatechefemployeestatus1(Id cid)
    {
        CCXR_Chef_Status__c chefsta=[select id ,CCXR_Chef_Current_Status__c from CCXR_Chef_Status__c where CCXR_Restaurant_Employee__c=:cid];
        chefsta.CCXR_Chef_Current_Status__c ='Busy';
        update chefsta;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Restaurant_Employee__c> getAccountNames(String accountName) {
      
      return [SELECT Id, Name,CCXR_Name__c,CCXR_Type_Of_Chef__c FROM CCXR_Restaurant_Employee__c where CCXR_Type_of_Employee__c='Chef' AND Id IN (SELECT CCXR_Restaurant_Employee__c FROM CCXR_Chef_Status__c WHERE CCXR_Chef_Current_Status__c= 'Available')];
    }
}