public class Day34C3 {
    Account a=[select Name,Phone,Annualrevenue,website,
               (select LastName,email from contacts)
               from Account where name='United Oil & Gas Corp.'];
   list< Account> a1=[select name,phone,annualrevenue,website,
                (select lastname,email from contacts)
                from account where industry='Electronics'];
public void readaccount()
{
    list<contact> c=a.contacts;
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
    for(Account a2:a1)
    {
    System.debug('Account Name'+a2.Name);
    System.debug('Account Phone'+a2.phone);
    System.debug('Account Annualrevenue='+a2.AnnualRevenue);
    System.debug('Account Website'+a2.Website);
    System.debug('Account contacts=');  
    list<contact> c12=a2.contacts;
         for(Contact c13:c12)
    {
        System.debug('contact lastname='+c13.lastname);
        system.debug('contact email='+c13.email);
    }
    }
}
}