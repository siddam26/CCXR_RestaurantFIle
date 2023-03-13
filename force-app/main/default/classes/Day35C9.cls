public class Day35C9 {
    
    Review__c r1=[select Name,Rating__c,
                 	Job_Application__r.Status__c
                 from Review__c
                 where Name='R-0001'];
    
    public void displayJObApplicationStatus()
    {
        system.debug('Review number:'+r1.Name);
        system.debug('job application status:'+r1.Job_Application__r.Status__c);
    }

}

/*Day35C9 obj =new Day35C9();
obj.displayJObApplicationStatus();*/