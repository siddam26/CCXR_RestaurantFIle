public class h234 {
	Public list<String>sl1=new list<String>{'Ram'};
  Public list<String>sl2=new list<String>{'Sam'};
 Public list<String>sl3=new list<String>{'Lite'};
 Public list<String>sl4=new list<String>();
Public list<String>sl5=new list<String>();
    Public list<String>sl6=new list<String>();
    Public list<String>sl7=new list<String>();
    Public void listMethod()
    {
        System.debug('sl1='+sl1);
        System.debug('sl2='+sl2);
        System.debug('sl3='+sl3);
        System.debug('sl4='+sl4);
        System.debug('sl5='+sl5);
 //1.Add
     sl1.add('Sun');
        System.debug('After Adding Sunil in sl1='+sl1);
//2.Addall
     sl5.addAll(sl1);
      System.debug('Adding sl1 elements in sl5='+sl5);   
//3.add at index
      sl2.add(2,'dog');
      System.debug('After Adding karthik at index 2 in Sl2='+sl2);
//4.Add all list element
      sl4.addAll(sl2);
        System.debug('After adding set elemnts of sl2 in sl4='+sl4);
 //5.clone
  sl6=sl3.clone();
        System.debug('Cloning Sl3 to sl6='+sl6);
//6.equals
Boolean b=sl1.equals(sl2);
        System.debug('sl1 equals sl2='+b);
//7.contains
b=sl1.contains('Ram');
 System.debug('sl1 contains Ram='+b);
//8.size
System.debug('Size of sL1='+sl1.size());
//9.sort
sl2.sort();
System.debug('After sl2 sort'+sl2);  
//10.isempty
System.debug('is sl3 empty='+sl3.isEmpty());
//11.get
    System.debug('Element at index 2 in sl5='+sl5.get(2));
//12.set
sl3.set(0,'Party');
System.debug('After set party at sl3='+sl3);
//13.remove
 System.debug('sl1 after removing 1='+sl1.remove(0));
        System.debug('sl1='+sl1);
//14.index of
     System.debug('Index of Pen in sl3='+sl3.indexOf('book'));


//16.Clear
     System.debug('sl2 before clear='+sl2);
    sl2.clear();
     System.debug('sl2 after clear='+sl2);
  
    }
}