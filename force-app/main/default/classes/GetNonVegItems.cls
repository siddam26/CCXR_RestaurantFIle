public class GetNonVegItems {
	@AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegStarterItems()
    {
        List<CCXR_Items__c> items=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
        Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
        CCXR_Item_Prep_Time__c,CCXR_Serves__c
                            from CCXR_Items__c
                            Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Starters'
                                  AND CCXR_Item_Status__c='Available'];
                            
        return items;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegSoupItems()
    {
        List<CCXR_Items__c> items2=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Soups'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items2;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegRiceItems()
    {
        List<CCXR_Items__c> items3=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Rice'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items3;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegCurryItems()
    {
        List<CCXR_Items__c> items4=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Curries'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items4;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegRotiItems()
    {
        List<CCXR_Items__c> items5=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Roti'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items5;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> nonVegDessertItems()
    {
        List<CCXR_Items__c> items6=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Non-Vegetarian'
                                   AND CCXR_Item_SubCategory__c='Desserts'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items6;
    }
}