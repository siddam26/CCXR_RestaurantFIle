public class Day38C7 implements Queueable {
    
    public void execute(QueueableContext qc)
    {
       list<Job_Application__c> updatejaap = new list<Job_Application__c>();
       list<Job_Application__c>  japp1=[select Name ,Status__c,
                            Position__r.name,Position__r.Functional_Area__c
                            from Job_Application__c 
                            where Position__r.Functional_Area__c ='Ware Housing' or Position__r.Functional_Area__c='Retail Operations'];
        
        for(Job_Application__c japp2:japp1)
        {
            japp2.Status__c='Rejected';
            updatejaap.add(japp2);
        }
        update updatejaap;
    }

}

/*Day38C7 qobj = new Day38C7();
id qid = system.enqueueJob(qobj);
system.debug(qid);
AsyncApexJob aj =[select status from AsyncApexJob
                 where id=:qid];
system.debug(qid);*/