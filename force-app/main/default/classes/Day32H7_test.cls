@istest
public class Day32H7_test 
{
    @istest
    public static void displayingLeadsRecordsWithnameD()
    {
        list<lead> lds = new list<lead>();
        lead l1 = new lead(lastname ='a',firstname='Udayqa',Annualrevenue=10000,Status='Open - Not Contacted',company='ccx');
        lead l2 = new lead(lastname ='b',firstname='Rhodes',Annualrevenue=10000,Status='Open - Not Contacted',company='ibm');
        lead l3 = new lead(lastname ='c',firstname='suriss',Annualrevenue=10000,Status='Open - Not Contacted',company='tcs');
        lds.add(l1);
        lds.add(l2);
        lds.add(l3);
        
        insert lds;
        Day32H7.displayinglLeadRecordsWithnameD();
        
        list<Lead> cl1 =[select Company,Name,status
                             from Lead
                               where Name like'________' And name Like '%d%'];
        
        integer x =  cl1.size();
        system.assertEquals(2,x);
       
            
        }
       

     }