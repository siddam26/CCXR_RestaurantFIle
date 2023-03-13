public class Day26H1 {
    public list<Lead>list1=new list<Lead>();
    Public Lead l1=new Lead(LastName='Shashank',Company='ccx',Phone='99988999');
    Public Lead l2=new Lead(LastName='Abhi',Company='ccx',Phone='9898988');
    Public Lead l3=new Lead(LastName='cook',Company='ccx',Phone='9827678');
    Public Lead l4=new Lead(LastName='Jhon',Company='ccx',Phone='3637763763');
    Public Lead l5=new Lead(LastName='rayes',Company='ccx',Phone='7363767');
     public list<Lead>list2=new list<Lead>();
     Public Lead l2a=new Lead(LastName='ash',Company='tata',Phone='873987498');
    Public Lead l2b=new Lead(LastName='harshith',Company='accenture',Phone='4784687');
    Public Lead l2c=new Lead(LastName='Sai',Company='infosys',Phone='478974894');
    Public Lead l2d=new Lead(LastName='Karthik',Company='bsnl',Phone='4749764');
    Public Lead l2e=new Lead(LastName='yeshwanth',Company='airtel',Phone='4764976');
    Public Lead l2f=new Lead(LastName='Manish',Company='Dell',Phone='4768746');
    public list<Lead>list3=new list<Lead>();
    Public Void records()
{
    //adding list1 records
    list1.add(l1);
    list1.add(l2);
    list1.add(l3);
    list1.add(l4);
    list1.add(l5);
   //adding List2 Records
   list2.add(l2a);
    list2.add(l2b);
    list2.add(l2c);
    list2.add(l2d);
    list2.add(l2e);
    list2.add(l2f);
      
    System.debug('Standard Object list list1='+list1);    
      for(integer i=0;i<List1.size();i++)
        {
            system.debug(List1[i].LastName);
            system.debug(List1[i].Company);
            
        }
     System.debug('Standard Object list list2='+list2);
     for(integer i=0;i<List2.size();i++)
        {
            system.debug(List2[i].LastName);
            system.debug(List2[i].Company);
            
            
        }
 //adding list2 and list1 to list3
       system.debug('adding list2 and list1 to list3');
       list3.addAll(list1);   
       System.debug('List3 after adding elements of List1='+list3);
       list3.addAll(list2);
       System.debug('List3 after adding elements of List2='+list3);
       System.debug('list3 after adding all elements of list1 and list 2='+list3);
    }

}