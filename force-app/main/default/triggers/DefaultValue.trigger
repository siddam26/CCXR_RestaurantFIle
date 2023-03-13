trigger DefaultValue on Account (before insert) {
    
    for(account a:trigger.new)
    {
        if(a.Industry == NULL)
        {
            a.Industry='Entertainment';
        }
     
        a.Active__c='Yes';
        a.Description='New Account';
        
    }
    
}