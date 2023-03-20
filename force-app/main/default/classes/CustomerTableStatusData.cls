public class CustomerTableStatusData {
	@AuraEnabled(cacheable=true)

    public static CCXR_Customer_Table_Status__c  getCustomerTableStatusData(integer token)
    {
      
        CCXR_Customer_Table_Status__c cts = [select  Id,Name,CCXR_Customer__r.Name,CCXR_Table__r.Name,
                                             Token_Number__c
                                             from CCXR_Customer_Table_Status__c 
                                             where Token_Number__c=:token];
        
        return cts;
    }
}