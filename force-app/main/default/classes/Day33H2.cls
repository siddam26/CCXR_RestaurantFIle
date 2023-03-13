public class Day33H2 {
//3.Write an Apex class to display the  5 lead records that has 6 letters  and 'S' in the name 
        
    public void records()
    {
        list<Lead> l = [select fields(standard)
                       from Lead 
                       where Name like'______' AND Name like '%s%' limit 5];
        
        for(Lead l1:l)
        {
            system.debug('Lead records with 6 letters and s in name are:'+l1);
        }
        
    }
}

/*Day33H2 obj =new Day33H2();
obj.records();*/