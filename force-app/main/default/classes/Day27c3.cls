public class Day27c3 {
        //1.Integer sets
    //static allocation of set elements
    public set<Integer> se1=new set<Integer>{33,22,21,3,55,77,47,8};
    public set<Integer> se2=new set<Integer>{3,22,26,3,5,2,7,4};
    public set<Integer> se3=new set<Integer>();
    public set<Integer> se4=new set<Integer>{33,22,21,3,55,77,47,8};
    public set<Integer> se5=new set<Integer>();
    public list<Integer> l1=new list<Integer>{45,54,21,21};

    //4.Standard Object set
    public set<Account> accounts=new set<Account>();
    public Account at1=new Account(Name='set Account1',Industry='Education',Phone='765456');
    public Account at2=new Account(Name='set Account2',Industry='Electronics',Phone='7615456');
    public Account at3=new Account(Name='set Account3',Industry='Banking',Phone='7654556');

    //5.Custom Object set
    public set<Position__c> positions=new set<Position__c>();
    position__c p1=new position__c(Name='set Position1',Min_pay__c=23000,Max_pay__c=25000,Functional_Area__c='Human Resource');
    position__c p2=new position__c(Name='set Position2',Min_pay__c=23000,Max_pay__c=25000,Functional_Area__c='Human Resource');
   
    public void setMethods(){
        System.debug('Se1= '+se1);
        System.debug('Se2= '+se2);
        System.debug('Se3= '+se3);
        System.debug('Se4= '+se4);
        System.debug('Se5= '+se5);
        //1.add
        se1.add(34);
        System.debug('Se1 after addning 34= '+se1);
        //2.addAll
        se1.addAll(se2);
        System.debug('Se1 after adding set se2= '+se1);
        //3.addAll(list)
        se1.addAll(l1);
        System.debug('Se1 after adding list l1= '+se1);
        //4.clone
        se3=se1.clone();
        System.debug('Se3 after clone= '+se3);
        //5.size()
        System.debug('Se1 Size='+se1.size());
        //6.isEmpty
        System.debug('Is Se5 empty='+se5.isEmpty());
        //7.contains
        System.debug('Is Se2 contains 2 ='+se2.contains(2));
        //8.containsAll
         System.debug('Is Se3 contains all elements of se1 ='+se3.containsAll(se1));
        //9.equals
        System.debug('Is se1 equal se3='+se1.equals(se3));
        //10.remove
        System.debug('Se2 after removing 7='+se2.remove(7));
        //11.tostring
        system.debug('se4 after converting to string='+se4.toString());
        //12.hash code
        system.debug('hash code of se4='+se4.hashCode());
        //12.remove all
        system.debug('se4 after removing all elements='+se4.removeAll(se4));
        //13.Clear
        se1.clear();
        System.debug('Se1 after clear= '+se1);
    }
}