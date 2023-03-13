public class Day38C11 implements schedulable {
    public void execute(schedulablecontext sc)
    {
        list<Job_Application__c> jap1=[select Name,Status__c,
                                       (select Rating__c from Reviews__r )
                                       from Job_Application__c 
                                       where Status__c ='Schedule For Interview']; 
        list<Review__c> updatereviews = new list<Review__c>();
        for(Job_Application__c jap2:jap1)
        {
            list<Review__c> currentreviews = jap2.reviews__r;
            if(currentreviews.size()>0)
            {
                for(Review__c r1:currentreviews)
                {
                    r1.Rating__c=4;
                    updatereviews.add(r1);
                }
                
            }
            else
            {
                Review__c r2 = new Review__c(Rating__c = 4,Job_Application__c=jap2.Id);
              
                updatereviews.add(r2);
            }
   
        }
        upsert updatereviews;
    }

}

/*implements schedulable*/
/*schedulablecontext sc*/