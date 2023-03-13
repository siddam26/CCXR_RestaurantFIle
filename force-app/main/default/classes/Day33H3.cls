public class Day33H3 {
    //Write an Apex class to display the won opportunity  records with amount >1000000
    
    public void records()
    {
        list<Opportunity> op=[select 	Name, StageName  ,Amount
                                 from Opportunity
                               where StageName ='Closed Won' AND Amount > 1000000];
        for(Opportunity op1:op)
        {
            system.debug('Oppurtunity records are:'+op1);
        }
    }

}

/*Day33H3 obj =new Day33H3();
obj.records();*/