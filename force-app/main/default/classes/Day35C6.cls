//child-parent
//standard child object-standard parent object
public class Day35C6 {
    
    Contact c1=[select lastname,Phone,Email,
                Account.name,Account.Industry,Account.AnnualRevenue
                from Contact where id='0035g00000etQGOAA2'];
    Contact c2=[select lastname,Phone,Email,
                Account.name,Account.Industry,Account.AnnualRevenue
                from Contact where id='0035g00000etQGOAA2' AND Phone='100'];
    list<Contact> cons=[select lastname,phone,email,
                        Account.name,Account.Industry,Account.AnnualRevenue
                        from Contact];
        
        
        public void displaychildandparentdata()
    {
        system.debug(c1);
        system.debug(c2);
        system.debug(cons);
    }

}

/*Day35C6 obj=new Day35C6();
obj.displaychildandparentdata();*/