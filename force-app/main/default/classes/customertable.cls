public with sharing class customertable 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Customer_Table_Status__c> getAllAccountsas(){
        List<CCXR_Customer_Table_Status__c> accList =[select Name,Customer_Table_Status__c,CCXR_Customer__r.CCXR_Name__c,CCXR_Table__r.Name,CCXR_Customer__r.No_Of_Persons__c from  CCXR_Customer_Table_Status__c];
        return accList;
    }
    
    @AuraEnabled
    public static List<CCXR_Customer_Table_Status__c> setstatus(Id recid){
        List<CCXR_Customer_Table_Status__c> up= new List<CCXR_Customer_Table_Status__c> ();
        List<CCXR_Customer_Table_Status__c> accList1 =[select Customer_Table_Status__c from  CCXR_Customer_Table_Status__c where id=:recid];
        for (CCXR_Customer_Table_Status__c acc:acclist1) {
            acc.Customer_Table_Status__c='Occupied';
            up.add(acc);
        }
       
        update up;
        RETURN up;
        
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Customer_Table_Status__c> getAccountNames() {
      
      return [SELECT Id, Customer_Table_Status__c,CCXR_Table__c FROM CCXR_Customer_Table_Status__c WHERE Customer_Table_Status__c='Waiting'];
    }



}