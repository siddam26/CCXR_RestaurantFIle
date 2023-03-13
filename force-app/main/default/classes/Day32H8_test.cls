@istest
public class Day32H8_test {
@istest
    private static void method()
    {
       
             list<lead>ll=new list<lead>();
        lead ll1=new lead(firstname='venu',lastname='v',company='ibm',Rating='Hot',LeadSource='Web',Date__c=Date.newInstance( 2021, 1, 1 ));
        lead ll2=new lead(firstname='ravi',lastname='d',company='ather',Rating='Hot',LeadSource='Web',Date__c=Date.newInstance( 2021, 1, 1 ));
        ll.add(ll1);
        ll.add(ll2);
        insert ll;
        Day32H8.records();
         list<Lead> l=[select NAME,Industry,Date__c
                      From Lead 	
                      Where Rating='Hot' And 	LeadSource='Web' And 	Date__c<=LAST_N_FISCAL_YEARS:1];
        integer x=l.size();
        system.assertEquals(2,x);
    }
}