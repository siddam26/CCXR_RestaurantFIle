public class GetNonVegSoups {
	@AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegSoupItems()
    {
        List<CCXR_Items__c> items=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Soups'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items;
    }
}