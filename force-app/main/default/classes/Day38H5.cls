public class Day38H5 implements Queueable {
    //Write an Apex class using queueable interface to update the status of IT and Finance positions to 'Closed Filled'
    public void execute(QueueableContext qc)
    {
       list<Position__c> updatepos = new list<Position__c>();
       list<Position__c>  pos1=[select Name,Functional_Area__c,Status__c
                                from Position__c
                                where Functional_Area__c IN ('Information Technology','Finance')];
        
        for(Position__c pos2:pos1)
        {
            pos2.Status__c='Closed-Filled';
            updatepos.add(pos2);
        }
        update updatepos;
    }

}

/*Day38H5 qobj = new Day38H5();
id qjid = system.enqueueJob(qobj);
system.debug(qjid);
AsyncApexJob aj =[select status from AsyncApexJob
                 where id=:qjid];
system.debug(aj);*/