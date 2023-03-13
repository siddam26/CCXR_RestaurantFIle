public class Day36H4 {
    //Write an Apex class to  delete  the rejected  JOb Applications
     public void deletingRejectedJobApplications()
     {
         list<Job_Application__c> japps =[select Status__c,
                                         Candidate__r.Last_Name__c,
                                          Position__r.Name
                                         from Job_Application__c where Status__c ='Rejected'];
         delete japps;
     }

}

/*Day36H4 obj = new Day36H4();
obj.deletingRejectedJobApplications();*/