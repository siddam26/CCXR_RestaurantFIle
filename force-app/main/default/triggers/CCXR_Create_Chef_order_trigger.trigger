trigger CCXR_Create_Chef_order_trigger on CCXR_Order_Line_Item__c (after insert) 
{
    list<CCXR_Chef_Orders__c> cheforders = new list <CCXR_Chef_Orders__c>();
    for(CCXR_Order_Line_Item__c oli:trigger.new)
    {
        if(oli.CCXR_OrderLineItem_Status__c=='Pending')
         {
             CCXR_Chef_Orders__c cheforder = new CCXR_Chef_Orders__c();
             cheforder.CCXR_Items_ID__c= oli.CCXR_Item_ID__c;
             cheforder.CCXR_Order_Id__c= oli.CCXR_Order_ID__c;
             cheforder.Order_status__c=oli.CCXR_OrderLineItem_Status__c;
         }
    }
    insert cheforders;
    
}