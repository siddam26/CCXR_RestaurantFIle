public class Day33H9 {
    //Write an Apex class to display the  8 South region leads records and skip 4 records
    public void records()
    {
        list<Lead> l2 =[select Industry,Name
                       from Lead
                       where Direction__c='South' limit 5 offset 2];
        
        for(Lead l1:l2)
        {
            system.debug('Lead records are:'+l1);
        }
    }

}

/*Day33H9 obj =new Day33H9();
obj.records();*/