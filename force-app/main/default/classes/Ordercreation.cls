public with sharing class Ordercreation {
    @AuraEnabled
    public static CCXR_Order__c createorder(CCXR_Order__c japRecobj)
    {
        try 
        {
            insert japRecobj;
            return japRecobj;
        } 
        catch (Exception ex) 
        {
            throw new AuraHandledException(ex.getMessage());
        }
    }
}