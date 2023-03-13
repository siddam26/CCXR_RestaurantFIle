public class Day35H6 {
    
    //Write an Apex class using SOSL to search for 'Manager' and display Position,User and Candidate records.
     list<list<sobject>> sobjs =[find 'Manager' in all fields Returning 
                                 Position__c(Name,Job_Description__c,Position_Age__c),
                                 Candidate__c(Last_Name__c,First_Name__c,Educational_Qualification__c),
                                 User(Title,Username)];
    
    list<Position__c> pos1 = new list<Position__c>();
    list<Candidate__c> cand1 = new list<Candidate__c>();
    list<User> u1 = new list<User>();
    
    
    public void displayPositionUserCandidateResult()
        
    {
        pos1=sobjs[0];
        cand1=sobjs[1];
        u1=sobjs[2];
        
        
        system.debug('Position records with manager term:::');
            for(Position__c pos2:pos1)
        {
            system.debug(pos2);
        }
         system.debug('Candidate records with manager term:::');
            for(Candidate__c cand2:cand1)
        {
            system.debug(cand2);
        }
         system.debug('User records with manager term:::');
            for(User u2:u1)
        {
            system.debug(u2);
        }
    }
        
}

/*Day35H6 obj= new Day35H6();
obj.displayPositionUserCandidateResult();*/