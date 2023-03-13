public class Day32H7 {
    //Write an Apex class to display the lead records that has 8 letters  and 'd' in the name.
    
    public static void displayinglLeadRecordsWithnameD()
    {
         list<Lead> l=[select name,	AnnualRevenue,	Status
                 from Lead
                 Where name Like '_________' And name Like '%d%'];
    for(Lead l3:l)
    {
        System.debug('Names with d in there name:'+l3);
    }
    }

}
/*Day32H7 obj2 =new Day32H7();
obj2.Records();*/