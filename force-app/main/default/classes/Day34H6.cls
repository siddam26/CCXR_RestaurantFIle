public class Day34H6 {
    
    //Name='United Oil & Gas Corp.
    list<Account> a2=[select Name,Industry,Type,
                      (select CaseNumber,ContactEmail,Type,Status,ClosedDate from Cases where 	ClosedDate= LAst_N_Months:1 AND Status='Closed')
                      from Account];
    
    public void displayClosedCases()
    {
        for(Account a3:a2)
        {
            system.debug('Account Details::');
            system.debug('Account name:'+a3.Name);
            system.debug('Account Industry:'+a3.Industry);
            system.debug('Account Type:'+a3.Type);
             system.debug('Cases closed in last month:');
            list<Case> c1=a3.Cases;
            for(Case c2:c1)
            {
              
                system.debug('Case number:'+c2.CaseNumber);
                system.debug('Case email:'+c2.ContactEmail);
                system.debug('case status:'+c2.Status);
                system.debug('case status:'+c2.ClosedDate);
                system.debug('case Type:'+c2.Type);
            }
            
            
        }
    }
    
}

/*Day34H6 obj3 = new Day34H6();
obj3.displayClosedCases();*/