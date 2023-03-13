public class Day32C4 {
    
    Account a=[Select name,AnnualRevenue,Phone
              From Account
              Where id='0015g00000w3ELVAA2'];
    Position__c p=[select name,	Status__c,	Functional_Area__c
                  from Position__c
                  where id='a025g000009g970AAA'];
    list<account> accounts=[select name,AnnualRevenue,Phone
                           from Account
                           where Industry='Education'];
    list<Position__c> positons=[select name,Min_Pay__c,	Max_Pay__c,Status__c
                               from Position__c];
    integer c=[select count() from account];
    integer c2=[select count() from Position__c];
    public void display()
    {
        system.debug('Standard object='+a);
        System.debug('Custom object='+p.id);
        System.debug('Custom object name'+p.Name);
        System.debug('Custom object status'+p.Status__c);
        System.debug('Custom object name'+p.Functional_Area__c);
        for(Account a:accounts)
        {
            System.debug(a);
        }
        for(Position__c p:positons)
        {
            System.debug(p.Name);
            System.debug(p.Status__c);
            System.debug(p.Min_Pay__c);
            System.debug(p.Max_Pay__c);
        }
        System.debug('count of account='+c);
        system.debug('count of position='+c2);
        
    }


}

/*Day32C4 obj2 = new Day32C4();
obj2.display();*/