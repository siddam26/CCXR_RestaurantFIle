public with sharing class orderdetails {
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Order__c> getorders()
    {
        List<CCXR_Order__c> orders=[SELECT id,CCXR_Customer__c,Name,CCXR_Table__c,CCXR_Grand_Total__c,
                                     CCXR_Tax__c,CCXR_Discount__c,CCXR_Net_Total__c
                            from CCXR_Order__c
                             WITH SECURITY_ENFORCED ];
                            
        return orders;
    }
}