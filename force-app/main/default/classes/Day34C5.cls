public class Day34C5 {
Account a=[select name,phone,annualrevenue,website,
                   (select lastname,email from contacts),
                (select name,Amount,Stagename from Opportunities)
                from account where Name='United Oil & Gas Corp.'];
public void readaccount()
{
    list<contact> c=a.contacts;
    list<Opportunity> op=a.Opportunities;
    System.debug('Account Name'+a.Name);
    System.debug('Account Phone'+a.phone);
    System.debug('Account Annualrevenue='+a.AnnualRevenue);
    System.debug('Account Website'+a.Website);
    System.debug('Account contacts=');
    for(Contact c1:c)
    {
        System.debug('contact lastname='+c1.lastname);
        system.debug('contact email='+c1.email);
    }
    for(Opportunity a2:op)
    {
    System.debug('Opportunity Name'+a2.Name);
    System.debug('Opportunity Amount'+a2.Amount);
    System.debug('Opportunity StageName='+a2.Stagename);
  
 
    }
}
}
/*Day34C5 obj= new Day34C5();
obj.readaccount();*/