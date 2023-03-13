public class Day35H3 {
    //Write an Apex class to display the Job Postings and positions
    list<Job_Posting__c> jp =[select Name,
                              Position__r.Functional_Area__c,
                              Position__r.Max_Pay__c,
                              Position__r.Name
                             from Job_Posting__c];
    
    public void displayJobPostingsAndPositions()
    {
        for(Job_Posting__c jp1:jp)
        {
            system.debug('Position:::');
            system.debug('Position Name:'+jp1.Position__r.Name);
            system.debug('Positon functionalArea:'+jp1.Position__r.Functional_Area__c);
            system.debug('Position maxpay:'+jp1.Position__r.Max_Pay__c);
            system.debug('Job POstings::::');
            system.debug('Job posting Number:'+jp1.Name);
        }
    }

}

/*Day35H3 obj = new Day35H3();
obj.displayJobPostingsAndPositions();*/