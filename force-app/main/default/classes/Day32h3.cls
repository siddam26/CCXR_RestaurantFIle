public class Day32h3 {
    //.Write an Apex class to display leads with rating as 'Hot' and leadsource as 'web' and created two days ago..
    public  void records()
    {
        list<Lead> l1 =[select CreatedDate,Rating,Name,LeadSource
                             from Lead
                               where Rating='Hot' AND LeadSource='Web' AND  CreatedDate = Last_N_Days:10 ];
        for(Lead l:l1)
        {
            system.debug('Leads records created 2 days ago are:'+l);
        }
    }

}

/*Day32h3 obj2 =new Day32h3();
obj2.records();*/