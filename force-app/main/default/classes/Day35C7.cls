public class Day35C7 {
    Job_Application__c ja=[select name , Status__c,Total_Rating__c,
                          Candidate__r.Last_Name__c,Candidate__r.Email__c,
                          Position__r.Name,Position__r.Location__c
                          from Job_Application__c
                          where id='a045g000009JlXjAAK'];
    
    public void displayJobApplicationAndParentDate()
    {
        system.debug('Total Rating:'+ja.Total_Rating__c);
        system.debug('Total Rating:'+ja.name);
        system.debug('Total Rating:'+ja.Candidate__r.Last_Name__c);
        system.debug('Total Rating:'+ja.Position__r.Name);
        
        
    }

}


/*Day35C7 obj =new Day35C7();
obj.displayJobApplicationAndParentDate();*/