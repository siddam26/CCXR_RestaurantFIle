public class TableController 
{
     @AuraEnabled(cacheable=true)
    public static List<CCXR_Table__c> getTableData()
    {
       list<CCXR_Table__c> table=[select Name,CCXR_Capacity__c,Table_Image_Link__c,CCXR_Restaurant_Employee__r.Name,
                        CCXR_Table_Status__c From CCXR_Table__c];
       
        return table;
       
    }
    @AuraEnabled
         public static void updateTable(Id upRecordId)
        {
        CCXR_Table__c upTab = [Select Name,id from CCXR_Table__c 
                                                where id=:upRecordId];
          update upTab;
        
         }
}