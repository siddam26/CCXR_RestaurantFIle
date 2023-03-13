//using stateful
public class Day39C6 implements database.Batchable<sobject>,database.stateful {
    public decimal grandtotal = 0;
    public integer totalnoofrecords =0;
    public final string query='select name,city,country,annualrevenue,region__c,Industry from lead';
    
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        list<lead> updateleads = new list<lead>();
        decimal currentbatchtotal=0;
        integer batchrecords=0;
        for(lead l:lds)
        {
            grandtotal = grandtotal+l.annualrevenue;
            currentbatchtotal = currentbatchtotal+l.annualrevenue;
            totalnoofrecords++;
            batchrecords++;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        system.debug('grand total='+grandtotal);
        system.debug('total no of records:'+totalnoofrecords);
        system.debug('batches processed successfully');
    }

}


/*Day39C6 obj =new Day39C6();
id jobid=database.executeBatch(obj,250);*/