public class Day35C4 {
    
    //display reviews >3
    public void displayReviews()
    {
        list<Review__c> r1=[select 	Name,Rating__c
                           from Review__c
                           where Rating__c > 3];
        
        system.debug('Reviews are:::');
        for(Review__c r2:r1)
        {
            system.debug(' Name:'+r2.Name);
            system.debug('Rating:'+r2.Rating__c);
        }
    }

}
/*Day35C4 obj2=new Day35C4();
obj2.displayReviews();*/