public class Day36C4 {
    public void setsavepointRollback()
    {
        Account a=[select name,phone
                   from Account
                   where name='Capgemini'];
        system.debug('Account data:'+a);
        savepoint sp1=database.setSavepoint();
        a.phone='9999';
        update a;
        a=[select name,phone 
           from Account
           where name='Capgemini'];
        system.debug('Account data='+a);
        savepoint sp2 = database.setSavepoint();
        a.phone='7777';
        update a;
        a=[select name,phone 
           from Account
           where name='Capgemini'];
        system.debug('Account data='+a);
        database.rollback(sp1);
        a=[select name,phone 
           from Account
           where name='Capgemini'];
        system.debug('Account data='+a);
    }
    
}

/*Day36C4 obj =new Day36C4();
obj.setsavepointRollback();*/