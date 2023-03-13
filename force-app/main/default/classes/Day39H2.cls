public class Day39H2 implements database.Batchable<sobject>{
    
    //Write a batch class to insert job postings for positions with zero job postings
     public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select Name,Min_Pay__c,Max_Pay__c,Functional_Area__c,
                                         (select Name,Employement_Website_Name__c from Job_Postings__r)
                                         from Position__c ]);
    }
     public void execute(database.BatchableContext bc,list<Position__c> pos1)
    {
        //list<Position__c> updatepositions3 = new list<Position__c>();
        list<Job_Posting__c> jp3 = new list<Job_Posting__c>();
        for(Position__c pos4:pos1)
        {
            list<Job_Posting__c> jp1 = pos4.Job_Postings__r;
            if(jp1.size() == 0)
            {
                Job_Posting__c jp2 = new Job_Posting__c(Position__c = pos4.id,Employement_Website_Name__c='a065g00000FjvWQAAZ');
                jp3.add(jp2);
            }
        }
        insert jp3;
    }
     public void finish(database.BatchableContext bc)
    {
        system.debug('Job postings inserted successfully');
    }

}

/*Day39H2 obj =new Day39H2();
id jobid=database.executeBatch(obj,200);*/