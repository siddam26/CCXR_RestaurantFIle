public class OrderCreation2 
{
    public Id neworderid;
    public void  createOrderAndOrderLines(id ctsid, id itemid,integer quantity)
    {
        CCXR_Order__c ord=[select id,CCXR_Order_Status__c,CCXR_Customer__c,CCXR_Table__c from CCXR_Order__c
                           where CCXR_Order_Status__c='Progress' and CCXR_Customer_Table_Status__r.id=:ctsid];
        system.debug(ord);
        /*if(ord.Id==null)
        {
            CCXR_Order__c neworder = new CCXR_Order__c(); 
            neworder.CCXR_Customer_Table_Status__c=ctsid;
            neworder.CCXR_Order_Status__c ='Progress';
            database.SaveResult dbs = database.insert(neworder,false);
            if (dbs.isSuccess()) 
            {
                System.debug('Account Successfully inserted, Account Id is: ' + dbs.getId());
                id neworderid =dbs.getId();
                system.debug(neworderid);
            }
        }
        CCXR_Order_Line_Item__c orderlineitem = new CCXR_Order_Line_Item__c ();     
        if(neworderid == null)
        {
            orderlineitem.CCXR_Order_ID__c = ord.id ;
            orderlineitem.CCXR_Item_ID__c = itemid;
            orderlineitem.CCXR_Quantity__c = quantity;
            database.SaveResult dbs = database.insert(orderlineitem ,false);
        }
        else
        {
            orderlineitem.CCXR_Order_ID__c = neworderid ;
            orderlineitem.CCXR_Item_ID__c = itemid;
            orderlineitem.CCXR_Quantity__c = quantity;
            database.SaveResult dbs = database.insert(orderlineitem ,false);
        }
        */
        
    }
}