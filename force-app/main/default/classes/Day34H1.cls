public class Day34H1 {
    list<account> a2=[select Name,Type,
                      (select Name,Amount,StageName from Opportunities where Amount >1000000  AND StageName='Closed Lost')
                      from account where Name like'%United%']; 
    
    
    
    public void displayLostOpportunityRecords()
    {
        for(account a3:a2)
        {
            system.debug('account name:'+a3.Name);
            system.debug('Account type:'+a3.Type);
            list<Opportunity> ops = a3.Opportunities;
            system.debug(' lost Opportunity records:');
            
            
            for(Opportunity o3:ops)
            {
                system.debug('Opportunity Name:'+o3.Name);
                system.debug('Opportunity amount:'+o3.Amount);
                system.debug('Opportunity StageName:'+o3.StageName);
            }
        }
    }
}