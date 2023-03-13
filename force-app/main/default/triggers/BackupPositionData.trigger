//take a backup of data before update on position

trigger BackupPositionData on Position__c (before update) {
    
     List<PositionDupe__c> dps = new List<PositionDupe__c>();
    for(Position__c newp : trigger.new)
    {
        Position__c p = trigger.oldMap.get(newp.id);
        user u = [ Select username from user where username =: userInfo.getUserName()];
        
        if(newp.id == p.id)
        {
            if(p.Location__c != newp.Location__c)
            {
                PositionDupe__c	 pd = new PositionDupe__c	();
                pd.name = newp.Name;
                pd.Operation__c='update';
                pd.OldValue__c = p.Location__c;
                pd.NewValue__c = newp.Location__c;
                pd.ModifiedUser__c = u.username;
                pd.ModifiedDate__c = system.today();
                dps.add(pd);
            }
            if(p.Status__c != newp.Status__c)
            {
                PositionDupe__c	 pd = new PositionDupe__c	();
                pd.name = newp.Name;
                pd.Operation__c='update';
                pd.OldValue__c = p.Status__c;
                pd.NewValue__c = newp.Status__c;
                pd.ModifiedUser__c = u.username;
                pd.ModifiedDate__c = system.today();
                dps.add(pd);
            }
        }
    }
    insert dps;
}