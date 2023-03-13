public class Day26C2 {
    //static allocation of elements
    public list<integer> l1 = new list<integer>{33,22,21,3,55,77,47,8};
    public list<integer> l2 = new list<integer>{33,22,21,3,55,77,47,8};
    public list<integer> l3 = new list<integer>{33,22,21,3,55,77,47,8};
    public list<integer> l4 = new list<integer>();
    public list<integer> l5 = new list<integer>();
    public list<integer> l6 = new list<integer>();
    //decimal list
     public list<decimal> dl1 = new list<decimal>{66.66,76.9,99.6};
    //string list
    public list<string>sl1 = new list<string>{'sam','James','Lahari'};
    //standard object list
    public list<Account>accounts = new list<Account>();
    public Account a1 = new Account(Name='list Account1',Industry='Education',Phone='75849652');
    public Account a2 = new Account(Name='list Account2',Industry='Education',Phone='75849652');
    public Account a3 = new Account(Name='list Account3',Industry='Education',Phone='75849652');
   //custom object list
    public list<Position__c> positions = new list<Position__c>();
    Position__c p1 = new Position__c(Name='list pos1',Functional_Area__c='	Information Technology',Min_Pay__c=25000);
    Position__c p2 = new Position__c(Name='list pos2',Functional_Area__c='	Information Technology',Min_Pay__c=28000);
    

   public void listMethods()
   {
       system.debug('Integer list l1='+l1);
       system.debug('Integer list l2='+l2);
       system.debug('Integer list l3='+l3);
       system.debug('Integer list l4='+l4);
       system.debug('Integer list l5='+l5);
       system.debug('Integer list l6='+l6);
       system.debug('decimal list al1='+dl1);
       system.debug('string list sl1='+sl1);
       system.debug('Accounts list accounts ='+accounts);
       system.debug('position list positions ='+positions);
       
       //1.Add Method
    	system.debug('list l1 before: '+ l1);
        l1.add(500);
    	system.debug('list l1 after: '+ l1);
        
        //2.Add All
        l3.addAll(l1);
        system.debug('list l3 after ading with l1: '+ l3);
        
        //3.size
        system.debug('size of list l2 :'+l2.size());
        
        //4.equals
        Boolean b;
        b=l1.equals(l2);
        system.debug('Is l1 equals to l2'+b);
     	
        //5.sort
        l1.sort();
        system.debug('l1 after sort'+l1);
     	
        //6.isempty
        system.debug('Is l4 empty'+l4.isEmpty());
		
        //7.clone
        l5=l3.clone();
        system.debug('clone of l3:'+l5);
        
        //8.contains
        b=l2.contains(10);
        system.debug('Is l2 conatins \'10\' :'+b);
        
        //9.get
        system.debug('element at index 2 in l2:'+l2.get(2));
        
        //10.set
        l5.set(4,44);
        system.debug('l5 after 44 at index 4 :'+l5);
        
        //11.remove
        system.debug('l3 list before: ' +l3);
        l3.remove(2);
 		system.debug('After remove index of 2 from l3 :'+l3);
        
        //12.indexof
    	system.debug('index of 47 in l1:'+l1.indexOf(47));
        
        //13.toString
        string str=l2.toString();
      	system.debug('convert the list to string:'+str);  
        
        //14.clear
        l2.clear();
        system.debug('clear the list l2 :'+l2);
       
   }

}