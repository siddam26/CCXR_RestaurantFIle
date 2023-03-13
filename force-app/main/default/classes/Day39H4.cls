public class Day39H4 implements database.Batchable<sobject>,database.stateful{
    
    //Write an Apex class using batch apex to find the total of min pay of all positions using stateful interface
      
    public decimal totalofminpay = 0;
    //public integer totalnoofrecords =0;
    public final string query='select Name,Min_Pay__c,Functional_Area__c from Position__c';
    
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(query);
    }
    public void execute(database.BatchableContext bc,list<Position__c> pos4)
    {
        list<Position__c> updatepos = new list<Position__c>();
        decimal currentbatchtotal=0;
        //integer batchrecords=0;
        for(Position__c pos5: pos4)
        {
            totalofminpay = totalofminpay+pos5.Min_Pay__c;
            currentbatchtotal = currentbatchtotal+pos5.Min_Pay__c;
            //totalnoofrecords++;
            //batchrecords++;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        system.debug('Total of minpay of all positions='+totalofminpay);
        //system.debug('total no of records:'+totalnoofrecords);
        system.debug('Min pay total processed successfully');
    }

}

/*Day39H4 obj =new Day39H4();
id jobid=database.executeBatch(obj,200);*/