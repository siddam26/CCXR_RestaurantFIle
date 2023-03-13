trigger settingJobApplicationStatus on Position__c (after update) 
 {
     list<Job_Application__c> jp2 = new list<Job_Application__c>();
     for(Position__c pos1:trigger.new)
     {
         Position__c p=trigger.oldmap.get(pos1.id);
        if(p.id== pos1.id && pos1.Status__c=='Closed-Not Approved')
        {
           list<Job_Application__c> ja = [select Status__c from Job_Application__c where Position__c=:pos1.Id];
            for(Job_Application__c jp3:ja)
            {
                jp3.Status__c='Rejected';
                jp2.add(jp3);
                
            }
        }
     }
     update jp2;

 }