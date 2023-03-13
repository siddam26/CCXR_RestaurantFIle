public class Day39C1 implements queueable {
    public void execute(queueablecontext qc)
    {
        
        list<Opportunity> updatedopportunity = new list<Opportunity>();
    
    list<Opportunity> op1 =[select 	Name,Type,StageName,CreatedById
                           from Opportunity
                           where Createddate = LAST_N_DAYS:20];
    
    for(Opportunity op2:op1)
    {
        op2.StageName='Closed Lost';
        updatedopportunity.add(op2);
        
    }
        update updatedopportunity;
    }
 
}

/*Day39C1 qobj = new Day39C1();
id qid = system.enqueueJob(qobj);
system.debug(qid);
AsyncApexJob aj =[select status from AsyncApexJob
                 where id=:qid];
system.debug(qid);*/