public class EmployeeData {
    
@AuraEnabled(cacheable=true)
public static List<CCXR_Restaurant_Employee__c> getEmployeeList() {
    return [SELECT Id, CCXR_Name__c, CCXR_Phone__c, CCXR_Email__c,
             CCXR_Type_of_Employee__c,(Select Name,CCXR_Chef_Current_Status__c from CCXR_Chef_Statuses__r)
                FROM CCXR_Restaurant_Employee__c];
}
@AuraEnabled(cacheable=true)
public static List<CCXR_Items__c> getItemList() {
    return [SELECT  id,CCXR_Item_Name__c, CCXR_Price__c, CCXR_Item_Status__c,Item_Image_Link__c,CCXR_Description__c,
               CCXR_Item_Prep_Time__c,CCXR_Serves__c
             FROM CCXR_Items__c];
}

@AuraEnabled(cacheable=true)
    public static List<CCXR_Table__c> getTableData()
    {
       list<CCXR_Table__c> table=[select Name,CCXR_Capacity__c,Table_Image_Link__c,CCXR_Restaurant_Employee__r.Name,
                        CCXR_Table_Status__c From CCXR_Table__c];
      
        return table;
       
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
     @AuraEnabled
     public static void deleteTable(Id tabRecordId)
      {
          list<CCXR_Table__c> delTab=[select Name,id From CCXR_Table__c
                                   where id=:tabRecordId];
          delete delTab;
         
      }

      @AuraEnabled
         public static void updateTable(Id upRecordId)
        {
        CCXR_Table__c upTab = [Select Name,id from CCXR_Table__c 
                                                where id=:upRecordId];
          update upTab;
        
         }

    @AuraEnabled(cacheable = true)
    public static List<CCXR_Feedback__c> getAllFeedback(){
        List<CCXR_Feedback__c> feedList =[select Name,CCXR_Customer__c,CCXR_Table__c,CCXR_Order__r.Name,
                                         CCXR_Food_Quality__c, CCXR_Service_Quality__c,CCXR_Suggestions__c
                                         from  CCXR_Feedback__c where CCXR_Customer__c!= NULL ];
        return feedList;
    }
  
}