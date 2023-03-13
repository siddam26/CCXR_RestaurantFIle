public class GetBeverageItems {
	@AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> waterItems()
    {
        List<CCXR_Items__c> items=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Beverage'
                                   AND CCXR_Item_SubCategory__c='Water'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> milkshakeItems()
    {
        List<CCXR_Items__c> items2=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Beverage'
                                   AND CCXR_Item_SubCategory__c='Milkshakes'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items2;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> iceCreamItems()
    {
        List<CCXR_Items__c> items3=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Beverage'
                                   AND CCXR_Item_SubCategory__c='Ice Creams'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items3;
    }
    @AuraEnabled(cacheable=true)
    public static List<CCXR_Items__c> sweetItems()
    {
        List<CCXR_Items__c> items4=[SELECT id,CCXR_Item_Name__c,CCXR_Price__c,
                                   Item_Image__c,Item_Image_Link__c,CCXR_Item_Category__c,
                                   CCXR_Item_Prep_Time__c,CCXR_Serves__c
                                   from CCXR_Items__c
                                   Where CCXR_Item_Category__c='Beverage'
                                   AND CCXR_Item_SubCategory__c='Sweets'
                                   AND CCXR_Item_Status__c='Available'];
        
        return items4;
    }
}