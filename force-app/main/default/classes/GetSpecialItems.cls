public with sharing class GetSpecialItems {
    public GetSpecialItems() {}
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> getTodaySpecialMenu()
    {
        //Date today = Date.today();
        List<CCXR_Items__c> menuItems = [SELECT CCXR_Item_Name__c, CCXR_Item_Status__c, 
                                        CCXR_Special_Item__c,Item_Image__c,Item_Image_Link__c,
                                        CCXR_Serves__c,CCXR_Price__c,CCXR_Item_Prep_Time__c
                                        FROM CCXR_Items__c 
                                        WHERE CCXR_Item_Status__c = 'Available' AND CCXR_Special_Item__c=true];
        return menuItems;
    }
    

}