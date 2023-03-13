@istest
public class Day32H3_test 
{
    @istest
    public static void displayingleadrec()
    {
        list<Lead> leads = new list<Lead>();
        for(integer i=0;i<3;i++)
        {
            lead l1 = new lead();
            l1.lastname='Test Lead'+i;
            l1.Company='Zebronics';
            l1.Rating='Hot';
            l1.LeadSource='Web';
            leads.add(l1);
        }
        insert leads;
        Day32h3.records();
        list<Lead> l1 =[select Rating,Name,LeadSource
                             from Lead
                               where Rating='Hot' AND LeadSource='Web'];
        integer x = l1.size();
        system.assertEquals(3,x);
        
    }
    

}