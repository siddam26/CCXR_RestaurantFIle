public with sharing class ItemCreationController {
    public ItemCreationController() {

    }
    @AuraEnabled
    public static List<CCXR_Items__c> createItems(List<CCXR_Items__c> itemList){
        insert itemList;
        return itemList;
	}
}