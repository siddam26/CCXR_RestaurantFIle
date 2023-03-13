public class Day35C10 {
    
    list<Review__c> r1=[select Name,Rating__c,
                        Job_Application__r.Position__r.Name,
                        Job_Application__r.Position__r.Functional_Area__c
                        from Review__c where Rating__c>3];
    
    public void displayPositionnameAndFunctionalArea()
    {
        for(Review__c r2:r1)
        {
            system.debug('review name:'+r2.Name);
            system.debug('Rating:'+r2.Rating__c);
            system.debug('position name:'+r2.Job_Application__r.Position__r.Name);
            system.debug('Functional Area:'+r2.Job_Application__r.Position__r.Functional_Area__c);
        }
        
    }
    
}
 
/*Day35C10 obj =new Day35C10();
obj.displayPositionnameAndFunctionalArea();*/