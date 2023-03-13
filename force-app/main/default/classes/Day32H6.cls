public class Day32H6 {
    
   
    public static void DisplayingLeadrecords()
    {
         //Write an Apex class to display the lead records that has 5 letters in their name
    list<Lead> l1 =[select Company,	Name 
                             from Lead
                               where Name like'______'];
        for(Lead l:l1)
        system.debug('Lead records:'+l);
    }

}

/*Day32H6 obj3= new Day32H6();
obj3.records();*/