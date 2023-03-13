//Insert
public class Day36C1 {
    
    public void dmlInsert()
    {
        //insert single record using stand alone
        Account a = new Account(name='Dml Account',Industry='Electronics',phone='1111');
        insert a;
        //insert single records using database class
        position__c p = new position__c(Name='DML position',Min_Pay__c=10000.00,Location__c='Austin, Netherlands');
        database.insert(p);
        //insert list of records
        Account a1 = new Account(name='Dml Account1',Industry='Electronics',phone='1111');
        Account a2 = new Account(name='Dml Account2',Industry='Electronics',phone='1111');
        Account a3 = new Account(name='Dml Account3',Industry='Electronics',phone='1111');
        
        list<Account> accs = new list<Account>();
        accs.add(a1);
        accs.add(a2);
        accs.add(a3);
        
        insert accs;
    }
    //Update
    public void dmlUpdate()
    {
        //updating single record
        Account a4=[select name,industry,phone 
                    from Account where name='Capgemini'];
        system.debug('Account before update='+a4);
        a4.phone='7777';
        update a4;
        
        Account a5=[select name,industry,phone 
                    from Account where name='Capgemini'];
        system.debug('Account after update:'+a5);
        
        //updating list of records
        list<Account> updateAcclist = [select name,industry,phone,annualrevenue 
                                       from account where name like '%Account%'];
        
        list<Account> updateAcclist2 = new list<Account>();
        for(Account ac:updateAcclist2)
        {
            ac.phone='4444';
            if(ac.annualrevenue <100000)
            {
                ac.annualrevenue = ac.annualrevenue+20000;
                
            }
            updateAcclist2.add(ac);
        }
        update updateAcclist2;
        
    }
    public void dmlUpsert()
    {
        Account a1 = new Account(name='upsert Account1',Industry='Electronics',phone='1111');
        Account a2 = new Account(name='upsert Account2',Industry='Electronics',phone='1111');
        Account a3 = new Account(name='upsert Account3',Industry='Electronics',phone='1111');
        
        list<Account> accs2 = new list<Account>();
        accs2.add(a1);
        accs2.add(a2);
        accs2.add(a3);
        
        list<Account> updateacc2 = [select name,industry,phone,annualrevenue 
                                    from Account
                                    where name like'%test%'];
        
        for(Account ac:updateacc2)
        {
            ac.Phone='5555';
            accs2.add(ac);
        }
        upsert accs2;
    }
    public void dmldelete()
    {
        list<position__c> delpos = [select name, Min_Pay__c
                                    from position__c
                                    where name='junior developer'];
        
        delete delpos;
        
        list<position__c> recyclebinpos =[select name,Min_Pay__c
                                          from position__c
                                          where name='junior developer' AND isdeleted=true];
        
        system.debug('deleted positions:'+recyclebinpos);
    }
    public void dmlUndelete()
    {
        list<position__c> recyclebinpos =[select name,Min_Pay__c
                                          from position__c
                                          where name='junior developer' ALL ROWS];
    }
    
    //dml merge
    public void dmlmerge()
    {
        Account a1=[select name,phone,industry,rating,type
                    from account 
                    where name='Capgemini'];
        Account a2=[select name,phone,industry,rating,type
                    from account 
                    where name='Acctest1'];
        
        merge a1 a2;
        
        Account a3=[select name,phone,industry,rating,type
                    from account 
                    where name='Capgemini'];
        system.debug('Merged accounts:'+a3);
        
    }
}

/*Day36C1 obj =new Day36C1();
//obj.dmlInsert();
//obj.dmlUpdate();
//obj.dmlUpsert();
//obj.dmldelete();
obj.dmlUndelete();*/