public class Day35H4 {
    
 //Write an Apex class to display the JOb Applications Scheduled for interview and the corresponding 
 //Candidate and Position information
   list<Job_Application__c> ja=[select name , Status__c,No_Of_Reviews__c,
                          Candidate__r.Last_Name__c,
                           Candidate__r.Email__c,
                          Position__r.Name,
                          Position__r.Functional_Area__c
                          from Job_Application__c 
                          where Status__c='Schedule For Interview'];
    
    public void DisplayJObApplicationswithPositionAndCandidate()
    {
        for(Job_Application__c ja1:ja)
        {
            system.debug('job Application Number:'+ja1.name);
            system.debug('JobApplication Status:'+ja1.Status__c);
            system.debug('No of reviews:'+ja1.No_Of_Reviews__c);
            system.debug('Candiadte Details:::');
            system.debug('Candidate Email:'+ja1.Candidate__r.Email__c);
            system.debug('Candidate last Name:'+ja1.Candidate__r.Last_Name__c);
            system.debug('Position details::::');
            system.debug('position title:'+ja1.Position__r.Name);
            system.debug('position functional area:'+ja1.Position__r.Functional_Area__c);
        }
    }

}

/*Day35H4 obj =new Day35H4();
obj.DisplayJObApplicationswithPositionAndCandidate();*/