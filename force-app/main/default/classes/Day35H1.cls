public class Day35H1 {
    
    //Write an Apex class to display the Prospecting opportunities  with amount >450000   and  with Agriculture Accounts .
    list<Opportunity> op1 = [select AccountId,StageName,Amount,
                             Account.Industry,Account.Name 
                             from Opportunity
                             where stageName='Prospecting' AND Amount>45000 AND Account.Industry='Agriculture'];
    
    public void displayAgricultureAccounts()
    {
        for(Opportunity op2:op1)
        {
            system.debug('Agriculture Accounts with Prospecting Opportunities::::');
            system.debug('Account Name:'+op2.Account.Name);
            system.debug('Account Industry:'+op2.Account.Industry);
            system.debug('Opportunity Name:'+op2.AccountId);
            system.debug('Opportunity StageName:'+op2.StageName);
            system.debug('Opportunity Amount:'+op2.Amount);
        }
    }

}

/*Day35H1 obj = new Day35H1();
obj.displayAgricultureAccounts();*/