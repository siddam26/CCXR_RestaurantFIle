public class Day35C3 {
    
    //display candidates from hyderabad and having experience
    public void displayCandidates()
    {
        list<Candidate__c> c1 = [select Name,City__c,Total_Experience__c
                                from Candidate__c 
                                where City__c='Hyderabad' AND Total_Experience__c>0];
        
        system.debug('Candidate records are:');
        for(Candidate__c c2:c1)
        {
            system.debug('Candidate name:'+c2.Name);
            system.debug('Canddidate city:'+c2.City__c);
            system.debug('Candidate Experience:'+c2.Total_Experience__c);
        }
    }

}

/*Day35C3 obj = new Day35C3();
obj.displayCandidates();*/