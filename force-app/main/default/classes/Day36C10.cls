public class Day36C10 {
    Position__c pos1=[select Name,Min_Pay__c
                      from Position__c
                     where Name='AG10'];

    Position__c pos2=[select Name,Min_Pay__c,
                      (select Name,	Status__c from Job_Applications__r)
                from Position__c
                     where Name='AG11'];
  
    
    
    public void result()
    {
        //list<Job_Application__c> japp1 = new list<Job_Application__c>();
        list<Job_Application__c> japp = pos2.Job_Applications__r;
        for(Job_Application__c j:japp)
        {
          j.Position__c=pos1.Id;
            update j;
            
        }
        
        delete pos2;
        
        
    }
    

}