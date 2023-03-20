public with sharing class customertable 
{
    @AuraEnabled(cacheable = true)
    public static List<CCXR_Customer_Table_Status__c> getAllAccountsas(){
        List<CCXR_Customer_Table_Status__c> accList =[select Name,Customer_Table_Status__c,Token_Number__c,CCXR_Customer__r.CCXR_Name__c,CCXR_Table__r.Name,CCXR_Customer__r.No_Of_Persons__c from  CCXR_Customer_Table_Status__c where Customer_Table_Status__c='Waiting'];
        return accList;
    }
    
    @AuraEnabled
    public static List<CCXR_Customer_Table_Status__c> setstatus(Id recid,Id tid,integer ran){
        List<CCXR_Customer_Table_Status__c> up= new List<CCXR_Customer_Table_Status__c> ();
        List<CCXR_Customer_Table_Status__c> accList1 =[select Customer_Table_Status__c,CCXR_Table__c,Token_Number__c from  CCXR_Customer_Table_Status__c where id=:recid];
        for (CCXR_Customer_Table_Status__c acc:acclist1) {
            acc.Customer_Table_Status__c='Occupied';
            acc.CCXR_Table__c=tid;
            acc.Token_Number__c=ran;
            up.add(acc);
        }
       
        update up;
        RETURN up;
        
    }
    @AuraEnabled
    public static List<CCXR_Table__c> tsetstatus(Id recid){
        List<CCXR_Table__c> up= new List<CCXR_Table__c> ();
        List<CCXR_Table__c> accList1 =[select CCXR_Table_Status__c from  CCXR_Table__c where id=:recid];
        for (CCXR_Table__c acc:acclist1) {
            acc.CCXR_Table_Status__c='Occupied';
            
            up.add(acc);
        }
       
        update up;
        RETURN up;
        
    }

    @AuraEnabled(cacheable=true)
    public static List<CCXR_Table__c> getAccountNames() {
      
      return [SELECT Id,Name,CCXR_Capacity__c FROM CCXR_Table__c where  CCXR_Table_Status__c in ('Vacant', 'Reserved') ];
    }

    @AuraEnabled
    public static List<CCXR_Customer_Table_Status__c> getCustomerTableStatus(){
        List<CCXR_Customer_Table_Status__c> accList =[select Name,Customer_Table_Status__c,Token_Number__c,CCXR_Customer__r.CCXR_Name__c,CCXR_Table__r.Name,CCXR_Customer__r.No_Of_Persons__c from  CCXR_Customer_Table_Status__c where Customer_Table_Status__c='Occupied'];
        return accList;
    }



}