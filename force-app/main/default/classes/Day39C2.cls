public class Day39C2 {
    
    public void rejectJobApplications()
    {
        list<Job_Application__c> jap1 =[select Name,Status__c,
                                        (select Rating__c from Reviews__r)
                                       from Job_Application__c];
        list<Job_Application__c> updatedjaap = new list<Job_Application__c>();
        
       
        for(Job_Application__c jap2:jap1)
        {
            list<Review__c> r1 = jap2.Reviews__r;
             boolean b=false;
            for(Review__c r2:r1)
            {
                if(r2.Rating__c>=3)
                {
                    b = true;
                }
              
            }
              if(b == false)
                {
                    jap2.Status__c='Rejected';
                    updatedjaap.add(jap2);
                }
        }
       update   updatedjaap;   
    }

}