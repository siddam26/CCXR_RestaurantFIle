public class Day34C8 {
    list<Account> ac =[select Name,AnnualRevenue,
                          (select Name,	StageName from Opportunities where StageName='Closed Won' )
                          from Account where AnnualRevenue>500000];
    
    public void readopportunities()

    {
         for(Account a:ac)
        {

            system.debug('Account Name are:'+a.Name);
            system.debug('Account annualRevenue:'+a.AnnualRevenue);
             list<Opportunity> ops =a.Opportunities;
             system.debug('Account opportunities:');
     
        for(Opportunity o:ops)
        {
            system.debug('opportunity name is:'+o.Name);
            system.debug('opportunity stage is:'+o.StageName);
        }
            

        }
     
        
        
    }
}