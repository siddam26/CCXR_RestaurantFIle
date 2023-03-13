public class Day27C4 {
    //Static allocation of values
    public map<Integer,Integer> mp1=new map<Integer,Integer>{10=>23,20=>45,33=>32,24=>25};
    public map<Integer,Integer> mp1clone=new map<Integer,Integer>();        
    public map<Integer,String> mp2=new map<Integer,String>();
    public map<Integer,Decimal> mp3=new map<Integer,Decimal>{22=>345.98,88=>76.9,75=>65.9};
    public map<String,String> mp4=new map<String,string>{'A'=>'Amar','A'=>'Amritha','B'=>'Binny','C'=>'Chaitanya'};
    public map<String,list<String>> mp5=new map<String,list<String>>();
    public map<Id,Account> mp6=new map<Id,Account>();
    public map<Id,Position__c> mp7=new map<Id,Position__c>();
    public map<Integer,list<Account>> mp8=new map<Integer,list<Account>>();
    public map<Integer,Integer> mp9=new map<Integer,Integer>();
     public list<list<integer>> ac = new list<list<integer>>();
 public list<list<list<integer>>> bm =new list<list<list<integer>>>();
    
    public void mapOperations(){
        mp2.put(110,'Harish');
        mp2.put(50,'Harini');
        mp2.put(10,'Varshith');
        mp2.put(290,'Suhas');
        System.debug('Mp1='+mp1);
        System.debug('Mp2='+mp2);
        list<integer> g1 = new list<integer>{10,20,30,40};
            ac.add(g1);
        bm.add(ac);
           
        list<string> strlist1=new list<string>{'Fana','Mt.Everest','Mt.Everest'};
        list<string> strlist2=new list<string>{'Umesh','Uma','Uday','Usha'};
        mp5.put('F-List',strlist1);
        mp5.put('S-List',strlist2);
		System.debug('Mp5 -string and list of String Map='+mp5);
       
        Account a=new Account(Name='New Map Account',Industry='Education',Phone='79542363');
        mp6.put('0015g00000r5bqNAAQ',a);
        
        Account a1=new Account(Name='New Map Accounta',Industry='Education',Phone='79542363');
        Account a2=new Account(Name='New Map Accountb',Industry='Education',Phone='79542363');
        Account a3=new Account(Name='New Map Accountc',Industry='Education',Phone='79542363');
        Account a4=new Account(Name='New Map Accountd',Industry='Education',Phone='79542363');
        Account a5=new Account(Name='New Map Accounte',Industry='Education',Phone='79542363');
        Account a6=new Account(Name='New Map Accountf',Industry='Education',Phone='79542363');
        Account a7=new Account(Name='New Map Accountg',Industry='Education',Phone='79542363');

        list<Account> accountsList1=new list<Account>();
       	list<Account> accountsList2=new list<Account>();
        accountsList1.add(a1);
        accountsList1.add(a2);
        accountsList1.add(a3);        
        accountsList2.add(a4);
        accountsList2.add(a5);
        accountsList2.add(a6);
        accountsList2.add(a7);
        
        mp8.put(555,accountsList1);
        mp8.put(666,accountsList2);
        
        System.debug('Integer ,list of Account Map='+mp8);
        //Map methods
        //1.Clone
        System.debug('mp1clone before clone='+mp1clone);
        mp1clone=mp1.clone();
        System.debug('mp1clone after clone='+mp1clone);        
        //2.equals
        System.debug('Is mp1 equals mpclone='+mp1.equals(mp1clone));
        //3.keySet
        System.debug('Mp1 key Set='+mp1.keySet());
        set<string> strlist=new set<string>();
        strlist.addAll(mp4.keySet());
        System.debug('Key set of Mp4='+strlist);
        //4.values
        System.debug('Mp1 Values='+mp1.values());
        list<integer> valueList=new list<Integer>();
        valueList.addAll(mp1.values());
        System.debug('Mp1 Values collected in list='+mp1.values());
        //5.remove
        System.debug('Mp1 after remove 32='+mp1.remove(32));
        //6.size
        System.debug('Size of mp2='+mp2.size());
        System.debug('Size of mp8='+mp8.size());
        //7.contains Key
        system.debug('mp4 has key A='+mp4.containsKey('A'));
        //8.put
        system.debug(' before inserting rohan in mp4='+mp4);
        system.debug(' after inserting rohan in mp4'+mp4.put('35', 'rohan'));
        //9.hash code
        system.debug('hascode of mp4'+mp4.hashCode());
        //10.Is empty
        system.debug('Is mp4 empty='+mp4.isEmpty());
        //11.PutAll
        system.debug('before mapping of mp1 to mp9='+mp9);
        mp9.putAll(mp1);
        system.debug(' after mapping of mp1 to mp9:'+mp9);
       //12.Clear
        mp1.clear();
        System.debug('Mp1 after clear='+mp1);
        system.debug('nested nested'+bm);
        system.debug('nested'+ac);
    }
 }