public with sharing class ShowOrderLines 
{
	@AuraEnabled(cacheable=true)

    public static list<CCXR_Order_Line_Item__c> showOrderLines(id orid)
    {
        list<CCXR_Order_Line_Item__c> ord=[select CCXR_Item_Name__c,CCXR_Price__c,CCXR_Quantity__c,CCXR_OrderLineItem_Status__c from
                                           CCXR_Order_Line_Item__c 
                                           where CCXR_Order_ID__c=:orid];
        return ord;
    }
}