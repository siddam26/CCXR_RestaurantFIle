public class Day32H8 {
    
    public static void records()
    {
         list<Lead> l1 =[select CreatedDate,Rating,Name,LeadSource
                             from Lead
                               where  CreatedDate > LAST_N_FISCAL_YEARS:1 ];
        
        for(Lead l3:l1)
        {
            system.debug('Last fiscal year:'+l3);
        }
    }

}