trigger CCXR_TableStatus on CCXR_Customer_Table_Status__c (after insert) 
{
    list<CCXR_Customer_Table_Status__c> custTableStatus = new list <CCXR_Customer_Table_Status__c>();
	for(CCXR_Customer_Table_Status__c cts:trigger.new)
    {
        cts.Customer_Table_Status__c='Waiting';
    }
}