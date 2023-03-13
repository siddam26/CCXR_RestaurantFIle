public class getcheforder
{
    @AuraEnabled
    public static list<CCXR_Chef_Orders__c> getcherfobap()
    {
       list<CCXR_Chef_Orders__c> cons=[select CCXR_Order_Id__c,Order_status__c,CCXR_Accepted_By_Chef__c from CCXR_Chef_Orders__c];
        
        return cons;
        
    }
}