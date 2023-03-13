trigger Populate_OrderLine_Total on CCXR_Order_Line_Item__c (before insert) {
    for(CCXR_Order_Line_Item__c li:trigger.new){
        li.CCXR_New_Total__c=li.CCXR_Total__c;
    
    }

}