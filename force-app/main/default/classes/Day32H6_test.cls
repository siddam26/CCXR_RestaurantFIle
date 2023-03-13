@istest
public class Day32H6_test 
{
    @istest
    public static void displayingLeadRecordsWithNameLengthAs5()
    {
        list<lead> lds = new list<lead>();
        lead l1 = new lead(lastname ='8',firstname='lead',Annualrevenue=10000,Status='Open - Not Contacted',company='ccx');
        lead l2 = new lead(lastname ='7',firstname='lead',Annualrevenue=10000,Status='Open - Not Contacted',company='ibm');
        lead l3 = new lead(lastname ='l',firstname='suni',Annualrevenue=10000,Status='Open - Not Contacted',company='tcs');
        lds.add(l1);
        lds.add(l2);
        lds.add(l3);
        
        insert lds;
        Day32H6.DisplayingLeadrecords();
        
        list<Lead> cl1 =[select Company,Name,status,AnnualRevenue
                             from Lead
                               where Name like'______'];
        integer x = cl1.size();
        system.assertEquals(3,x);
        
        
    }

}