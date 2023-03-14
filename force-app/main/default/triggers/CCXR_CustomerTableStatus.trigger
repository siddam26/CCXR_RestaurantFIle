trigger CCXR_CustomerTableStatus on CCXR_Customer__c (after insert)
{
    list<CCXR_Customer__c> custTableStatus = new list <CCXR_Customer__c>();
    for(CCXR_Customer__c cts:trigger.new)
    {
        CCXR_Customer_Table_Status__c ct = new CCXR_Customer_Table_Status__c();
        
        ct.Customer_Table_Status__c='Waiting';
            ct.CCXR_Customer__c=cts.id;
           
            
        insert ct;
    }
}