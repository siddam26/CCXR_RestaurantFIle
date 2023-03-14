public class EmployeeData {
    
@AuraEnabled(cacheable=true)
public static List<CCXR_Restaurant_Employee__c> getEmployeeList() {
    return [SELECT Id, CCXR_Name__c, CCXR_Phone__c, CCXR_Email__c,
             CCXR_Type_of_Employee__c,(Select Name,CCXR_Chef_Current_Status__c from CCXR_Chef_Statuses__r)
                FROM CCXR_Restaurant_Employee__c];
}
@AuraEnabled(cacheable=true)
public static List<CCXR_Items__c> getItemList() {
    return [SELECT  id,CCXR_Item_Name__c, CCXR_Price__c, CCXR_Item_Status__c,CCXR_Image__c,CCXR_Description__c,
               CCXR_Item_Prep_Time__c,CCXR_Serves__c
             FROM CCXR_Items__c];
}

    @AuraEnabled
    public static void deleteEmp(Id selRecordId)
     {
          CCXR_Restaurant_Employee__c delEmp = [Select Name,id from CCXR_Restaurant_Employee__c 
                                                where id=:selRecordId];
          delete delEmp;
        
     }
    @AuraEnabled
    public static void deleteItems(Id delRecordId)
     {
          CCXR_Items__c delitm = [Select Name,id from CCXR_Items__c 
                                                where id=:delRecordId];
          delete delitm;
        
     }

  
}