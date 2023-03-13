public class Day26C1 {
    //creating integer list
    public list<integer>l1 = new list<integer>{33,22,21,3,55,77,47,8};
    //creating decimal list
    public list<decimal>dl1 = new list<decimal>{66.66,76.9,99.6};
    //creating string list
    public list<string>sl1 = new list<string>{'sam','James','Lahari'};
    //creating standard object list
    public list<Account>accounts = new list<Account>();
    public Account a1 = new Account(Name='list Account1',Industry='Education',Phone='75849652');
    public Account a2 = new Account(Name='list Account2',Industry='Education',Phone='75849652');
    public Account a3 = new Account(Name='list Account3',Industry='Education',Phone='75849652');
    //creating custom object list
    public list<Position__c> positions = new list<Position__c>();
    Position__c p1 = new Position__c(Name='list pos1',Functional_Area__c='	Information Technology',Min_Pay__c=25000);
     Position__c p2 = new Position__c(Name='list pos2',Functional_Area__c='	Information Technology',Min_Pay__c=28000);
    
    iterator<integer> iit = l1.iterator();
    iterator<decimal> dit = dl1.iterator();
    iterator<string>  sit = sl1.iterator();
    iterator<Account> accsit = accounts.iterator();
    iterator<Position__c> posit = positions.iterator();
    
    public void listIterations()
    {
        accounts.add(a1);
        accounts.add(a2);
        accounts.add(a3);
        positions.add(p1);
        positions.add(p2);
        
         system.debug('Integer list l1='+l1);
         system.debug('Decimal list l1='+dl1);
         system.debug('String list l1='+sl1);
         system.debug('Account list accounts='+accounts);
         system.debug('position list positions='+positions);
        
        //1.Iterating list trough traditional for loop
        system.debug('1.Iterating list trough traditional for loop');
        //1.1 Iterating  integer list using traditional for loop
        
         system.debug('1.1terating list though traditional for loop');
        
        for(integer i=0;i<l1.size();i++)
        {
            system.debug(l1[i]);
        }
         //1.2 Iterating decimal list using traditional for loop
         system.debug('1.2 Iterating decimal list using traditional for loop');
        for(integer i=0;i<dl1.size();i++)
        {
            system.debug(dl1[i]);
        }
        //1.3 Iterating string list using traditional for loop
         system.debug('1.3Iterating string list using traditional for loop');
        for(integer i=0;i<sl1.size();i++)
         {
            system.debug(sl1[i]); 
         }
        //1.4 Iterating standard object list using traditional for loop
         system.debug('1.4 Iterating standard object list using traditional for loop');
        for(integer i=0;i<accounts.size();i++)
        {
            system.debug(accounts[i]);
            system.debug(accounts[i].Name);
        }
        //1.5 Iterating custom object list using traditional for loop
         system.debug('1.4 Iterating custom object list using traditional for loop');
        for(integer i=0;i<positions.size();i++)
        {
            system.debug(positions[i]);
            system.debug(positions[i].Name);
            system.debug(positions[i].Min_Pay__c);
            system.debug(positions[i].Functional_Area__c);
        }
        
        //Iterating list using for each loop
        system.debug('Iterating list using for each loop');
        //2.1 Iterating integer list using for each loop
        system.debug('2.1 Iterating integer list using for each loop');
        for(integer x : l1)
        {
            system.debug(x);
        }
         //2.2 Iterating decimal list using for each loop
        system.debug('2.2 Iterating decimal list using for each loop');
        for(decimal d : dl1)
        {
            system.debug(d);
        }
         //2.3 Iterating string list using for each loop
        system.debug('2.3 Iterating string list using for each loop');
        for(string s : sl1)
        {
            system.debug(s);
        }
         //2.4 Iterating Account object list using for each loop
        system.debug('2.4 Iterating Account object  list using for each loop');
        for(Account a : accounts)
        {
            system.debug(a);
            system.debug(a.Name);
            system.debug(a.Industry);
            system.debug(a.Phone);
            system.debug(a.AnnualRevenue);
            
        }
         //2.5 Iterating Custom object list using for each loop
        system.debug('2.5 Iterating Custom object  list using for each loop');
        for( Position__c p : positions)
        {
            system.debug(p);
            system.debug(p.Name);
            system.debug(p.Min_Pay__c);
            system.debug(p.Functional_Area__c);
            
        }
        
        //3. Iterating list through iterator
        System.debug('3.Iterating list through iterator'); 
        //3.1 Iterating  integer list through iterator
        system.debug('3.1 Iterating  integer list through iterator');
        while(iit.hasNext())
        {
           system.debug(iit.next());
        }
          //3.2 Iterating  decimal list through iterator
        system.debug('3.1 Iterating  decimal list through iterator');
        while(dit.hasNext())
        {
           system.debug(dit.next());
        }
        //3.3 Iterating  string list through iterator
        system.debug('3.1 Iterating  string list through iterator');
        while(sit.hasNext())
        {
           system.debug(sit.next());
        }
        /*///3.4 Iterating  standard object list through iterator
        system.debug('3.1 Iterating  standard object list through iterator');
        while(accsit.hasNext())
        {
           system.debug(accsit.next());
        }
        //3.5 Iterating  custom object list through iterator
        system.debug('3.1 Iterating  custom object list through iterator');
        while(posit.hasNext())
        {
           system.debug(posit.next());
        }*/
        
        
        
        
    }
    
      

}