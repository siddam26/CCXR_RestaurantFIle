public class Day34H5 {
   
    list<Job_Application__c> ja =[select Name,Status__c,Total_Rating__c,id,Candidate__c,Position__c,
                                  (select Name,Rating__c,Job_Application__c from Reviews__r where Rating__c<=3 )  
                                  from Job_Application__c ];
    public void display()
    {
         for(Job_Application__c ja1:ja)
        {

       list<Review__c> re=ja1.Reviews__r;
       
       for(Review__c re1:re) 
       {
           
           system.debug('Review rating='+re1.Rating__c);
           system.debug('Review Name='+re1.Name);
       

           list<Position__c> pos=[select location__c,Name from position__c where id=:ja1.Position__c ] ;
           for(Position__c r:pos)           
           {
            system.debug('position name ='+r.Name);
            system.debug('position location ='+r.location__c);
            }
           list<candidate__c> cand=[select First_Name__c,Gender__c, Name from candidate__c where id=:ja1.Candidate__c ] ;
           for(candidate__c r:cand)           
           {
            system.debug('candidate name ='+r.name);
   
           }
           
           
       }
        }
        
    }

}