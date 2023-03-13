public class Day39C5 implements database.Batchable<sobject > {
    //public final string query='select name,city,country,annualrevenue,region__c,Industry from lead';
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select name,AnnualRevenue,region__c,Industry from lead]);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        list<lead> updateleads = new list<lead>();
        for(lead l:lds)
        {
            l.annualrevenue = l.annualrevenue+10000;
            updateleads.add(l);
        }
        update updateleads;
    }
    public void finish(database.BatchableContext bc)
    {
        system.debug('batches fetched successfully');
    }

}

/*Day39C5 obj = new Day39C5();
id jobid=database.executeBatch(obj,250);*/