public class waiterScreen
{
       @AuraEnabled(cacheable = true)
    public static List<CCXR_Chef_Orders__c> getAllAccountss(){
        List<CCXR_Chef_Orders__c> accList =[Select Id,CCXR_Order_Id__c,CCXR_Table__c,
        CCXR_Items_ID__c,Order_status__c,button3__c,button4__c,Assignedtochef__r.Name,assigned_waiter__c,CCXR_Accepted_By_Chef__c,CCXR_Items_ID__r.CCXR_Item_Name__c,CCXR_Order_Id__r.Name FROM CCXR_Chef_Orders__c where Order_status__c in ('Ready','Picked-up')];
        return accList;
    }
    @AuraEnabled
    public static void statuspick(Id cat,boolean but1,boolean but2)
    {
        CCXR_Chef_Orders__c acc = new CCXR_Chef_Orders__c(Id = cat);
        acc.Order_status__c ='Picked-up';
        acc.button3__c=but1;
        acc.button4__c=but2;
        update acc;
        

}
@AuraEnabled
public static void statusser(Id cat,boolean but2)
{
    CCXR_Chef_Orders__c acc = new CCXR_Chef_Orders__c(Id = cat);
    acc.Order_status__c ='Served';
  
    acc.button4__c=but2;
    update acc;
        

}
}