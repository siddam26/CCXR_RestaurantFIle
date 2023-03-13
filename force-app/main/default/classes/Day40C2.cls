public class Day40C2 implements database.Batchable<sobject>,database.stateful  {
    public set<id> allLeadIds = new set<id>();
    public set<id> SuccessLeadIds = new set<id>();
    public set<id> failedLeadIds = new set<id>();
    
    public database.QueryLocator start(database.batchablecontext bc)
    {
        return database.getQueryLocator('select name,AnnualRevenue,NumberOfEmployees from lead ');
    }
    public void execute(database.batchablecontext bc,list<lead> lds)
    {
        list<lead> upleads=new list<lead>();
        for(lead l:lds)
        {
            if(l.AnnualRevenue==4010000)
            {
                l.NumberOfEmployees=30;
                upleads.add(l);
                allLeadIds.add(l.id);
            }
            else{
                l.NumberOfEmployees=40;
                upleads.add(l);
                 allLeadIds.add(l.id);
        }
        }
        database.SaveResult[] results = database.update(upleads,false);
        for(integer i=0;i<results.size();i++)
        {
            if(results.get(i).issuccess())
            {
                SuccessLeadIds.add(results.get(i).id);
            }
            else{
                failedLeadIds.add(results.get(i).id);
        }
        }
    }
    
    public void finish(database.batchablecontext bc)
    {
        system.debug('All lead ids:'+allLeadIds);
        system.debug(' Success ids:'+SuccessLeadIds);
        system.debug('Failed ids:'+failedLeadIds);
        
    }
 
}


/*Day40C2 obj =new Day40C2();
id jobid=database.executeBatch(obj,200);*/