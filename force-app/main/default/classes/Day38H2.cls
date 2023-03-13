public class Day38H2 implements schedulable {
    
    //Write an Apex class to send  a birthday greetings at 6.am  to candidates celebrating  birthday today 
    
    Date d1 = system.today();
    public void execute(schedulablecontext sc)
    {
        list<Candidate__c> cand = [SELECT Id, Name, Email__c,Date_of_Birth__c
                                   FROM Candidate__c  
                                   WHERE DAY_IN_MONTH(Date_of_Birth__c) =:d1.day()   
                                   AND CALENDAR_MONTH(Date_of_Birth__c) =:d1.month()];
        
        for(Candidate__c c: cand)
        {
            task t=new Task();
            t.OwnerId='0055g00000FJLN5AAP';
            t.subject='Send birthday wishes';
            insert t;
        }
    }
    
}