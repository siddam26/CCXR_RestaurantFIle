public class Day34H2 {
    list<account> a3 =[select Name,Industry,Type,
                      (select name, email, phone from Contacts where phone != NULL AND Email !=NULL)
                      from account where  Industry='Electronics'];
    
    public void dsiplayContactwithnameandemail()
    {
        for(account a4:a3)
        {
            system.debug('Accounts:::::');
            system.debug('Account name:'+a4.Name);
            system.debug('Account Industry:'+a4.Industry);
            system.debug('Account Type:'+a4.Type);
            list<Contact> c1 = a4.Contacts;
            system.debug('Contact:::');
            for(Contact c2:c1)
            {
                system.debug('Contact Name:'+c2.name);
                system.debug('Contact email:'+c2.email);
                system.debug('Contact phone:'+c2.phone);
            }
        }
    }

}

/*Day34H2 obj2 =new Day34H2();
obj2.dsiplayContactwithnameandemail();*/