public class Day26H2 {
    Public list<String>hl1=new list<String>{'jason','rayudu','ash','pikachu','snorlax'};
    Public list<String>hl2=new list<String>{'meyer','rohan'};
    Public list<String>hl3=new list<String>{'shepard'};
    Public list<String>hl4=new list<String>();
    Public list<String>hl5=new list<String>();
    Public list<String>hl6=new list<String>();
    Public void listMethods()
    {
        System.debug('hl1='+hl1);
        System.debug('hl2='+hl2);
        System.debug('hl3='+hl3);
        System.debug('hl4='+hl4);
        System.debug('hl5='+hl5);
 //1.Add
        hl1.add('xerox');
        System.debug('hl1 After Adding xerox  hl1='+hl1);
//2.Add all
      hl5.addAll(hl1);
      System.debug('Adding hl1 elements in hl5='+hl5);   
//3.add at index
      hl2.add(1,'kite');
      System.debug('After Adding kite at index 2 in hl2='+hl2);
//4.Add all list element
        hl4.addAll(hl2);
        System.debug('After adding list elemnts of hl2 in hl4='+hl4);
 //5.clone
        hl6=hl3.clone();
        System.debug('Cloning hl3 to hl6='+hl6);
//6.equals
        Boolean b=hl1.equals(hl2);
        System.debug('hl1 equals hl2='+b);
//7.contains
         b=hl1.contains('jason');
         System.debug('hl1 contains jason='+b);
//8.size
         System.debug('Size of hl1='+hl1.size());
//9.sort
         hl2.sort();
         System.debug('After hl2 sort'+hl2);  
//10.isempty
         System.debug('is hl3 empty='+hl3.isEmpty());
//11.get
         System.debug('Element at index 2 in hl5='+hl5.get(2));
//12.set
         hl3.set(0,'perfume');
         System.debug('After set party at hl3='+hl3);
//13.remove
         System.debug('hl1 after removing 0='+hl1.remove(0));
         System.debug('hl1='+hl1);
//14.index of
         System.debug('Index of book in hl3='+hl3.indexOf('book'));


//16.Clear
         System.debug('hl2 before clear='+hl2);
         hl2.clear();
     System.debug('hl2 after clear='+hl2);
  
    }
}