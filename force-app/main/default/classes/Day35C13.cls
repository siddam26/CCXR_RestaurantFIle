public class Day35C13 {
    
    list<list<sobject>> sobjs =[find 'CCX*' in all fields
                                Returning lead(Name,Phone,Company),
                                Account(Name,Phone,AnnualRevenue),
                                Contact(lastName,Email),
                                Position__c(Name,Job_Description__c)];
    
    list<lead> lds = new list<lead>();
    list<Account> accs = new list<Account>();
    list<Contact> cons = new list<Contact>();
    list<Position__c> pos = new list<Position__c>();
    
    public void displaySoslResult()
        
    {
        lds=sobjs[0];
        accs=sobjs[1];
        cons=sobjs[2];
        pos=sobjs[3];
        
        system.debug('lead records with CCX term:::');
            for(lead l:lds)
        {
            system.debug(l);
        }
         system.debug('Account records with CCX term:::');
            for(Account a:accs)
        {
            system.debug(a);
        }
         system.debug('Contact records with CCX term:::');
            for(Contact c:cons)
        {
            system.debug(c);
        }
         system.debug('Position records with CCX term:::');
            for(Position__c p:pos)
        {
            system.debug(p);
        }
        
    }
}