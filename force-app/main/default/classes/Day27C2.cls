public class Day27C2 {
    //1.Integer sets
    //static allocation of set elements
    public set<Integer> l1=new set<Integer>{33,22,21,3,55,22,77,47,8};
    //2.Decimal sets
    public set<Decimal> dl1=new set<Decimal>{66.66,76.9,99.6};
    //3.String set
    public set<String> sl1=new set<String>{'Sam','James','Sam','Lahari'}; 
    //4.Standard Object set
    public set<Account> accounts=new set<Account>();
    public Account a1=new Account(Name='set Account1',Industry='Education',Phone='765456');
    public Account a2=new Account(Name='set Account2',Industry='Electronics',Phone='7615456');
    public Account a3=new Account(Name='set Account3',Industry='Banking',Phone='7654556');

    //5.Custom Object set
    public set<Position__c> positions=new set<Position__c>();
    position__c p1=new position__c(Name='set Position1',Min_pay__c=23000,Max_pay__c=25000,Functional_Area__c='Human Resource');
    position__c p2=new position__c(Name='set Position2',Min_pay__c=23000,Max_pay__c=25000,Functional_Area__c='Human Resource');
   
    iterator<integer> iit=l1.iterator();
    iterator<decimal> dlit=dl1.iterator();
    iterator<string> sit=sl1.iterator();
    iterator<Account> accsit=accounts.iterator();
    iterator<Position__c> posit=positions.iterator();
    
    public void setIterations(){
        accounts.add(a1);
        accounts.add(a2);
        accounts.add(a3);
        positions.add(p1);
        positions.add(p2);
        
        System.debug('Integer set l1='+l1);
        System.debug('Decimal set dl1='+dl1);
        System.debug('String set sl1='+sl1);
        System.debug('Accounts set accounts'+accounts);
        System.debug('Position set positions'+positions);
        
       
        //1.Iterating sets using  for each loop
          System.debug('1.Iterating set using  for each loop');
        //1.1 Iterating  Integer set using  for each loop
        System.debug('1.1 Iterating Integer set using  for each loop');
        for(integer x:l1){
            System.debug(x);
        }
        //1.2 Iterating  Decimal set using  for each loop
        System.debug('1.2.1Iterating Decimal set using  for each loop');
        for(decimal d:dl1){
            System.debug(d);
        }
 
        //1.3 Iterating  String set using  for each loop
        System.debug('1.3 Iterating String set using  for each loop');
        for(string s:sl1){
            System.debug(s);
        }
 
        //1.4 Iterating  Standard Object set using traditional for loop
        System.debug('1.4.Iterating Standard  object set using  for each loop');
        for(Account a:accounts){
            System.debug(a);
            System.debug(a.name);
            System.debug(a.industry);
            System.debug(a.phone);
            System.debug(a.AnnualRevenue);
        }
        //1.5 Iterating  Custom Object set using  for each  loop
        System.debug('1.5.Iterating Custom  object set using  for each loop');
        for(position__c p:positions){
            System.debug(p);
            System.debug(p.name);
            System.debug(p.Min_pay__c);
            System.debug(p.Functional_Area__c);
        }

       //2.Iterating sets using iterator
        System.debug('2.Iterating set using iterator');
        //2.1 Iterating  Integer set using iterator
        System.debug('2.1.Iterating Integer set using iterator');
        while(iit.hasNext()){
            System.debug(iit.next());
            
        }
        //2.2 Iterating  Decimal set using iterator
        System.debug('2.2.1Iterating Decimal set using iterator');
               while(dlit.hasNext()){
            System.debug(dlit.next());           
        }
        //2.3 Iterating  String set using iterator
        System.debug('2.3 Iterating String set using iterator');
           while(sit.hasNext()){
            System.debug(sit.next());           
        }
    }
}