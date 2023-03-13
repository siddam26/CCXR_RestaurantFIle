public class day34c6 
{
    Position__c position =[select name,location__c,
                           (select Name,No_Of_Reviews__c,id  from Job_Applications__r)
                           from position__c where name='Developer'];
    
    public void displayreviews()
    {
       system.debug('position name='+position.name); 
       system.debug('position name='+position.location__c);
       list<Job_Application__c> jobapplication=position.Job_Applications__r;
       //list <Review_c> reviews=new list<Review_c>();
       for(Job_Application__c ap1:jobapplication) 
       {
           
           system.debug('Job Apllication Name='+ap1.Name);
           
           list<Review__c> reviews=[select Name,Rating__c,Job_Application__c from Review__c where Job_Application__c=:ap1.id ] ;
           for(Review__c r:reviews)
           {
            system.debug('name ='+r.Name);
            system.debug('name ='+r.Rating__c);   
           
           }
           
           
       }
        
    }

}