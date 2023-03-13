public class Day33H6 {
    
    //7.Write an Apex class to display the Candidate records who are celebrating their birthday today
    Date d1 = system.today();
    public void records()
    {
        list<Candidate__c> cand = [SELECT Id, Name, Email__c,Date_of_Birth__c
                                   FROM Candidate__c  
                                   WHERE DAY_IN_MONTH(Date_of_Birth__c) =: d1.day()   
                                                AND CALENDAR_MONTH(Date_of_Birth__c) =:   d1.month()];
        
        for(Candidate__c c: cand)
        {
            system.debug(c);
        }
    }

}