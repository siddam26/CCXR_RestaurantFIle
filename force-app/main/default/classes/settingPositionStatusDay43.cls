public class settingPositionStatusDay43 {
    
   public static void setPositionStatus(List<Job_Application__c> jobApp)
   {
        Integer j = 0;
        List<id> jobIds = new List<Id>();
        for(Job_Application__c jap : jobApp)
        {
            jobIds.add(jap.Position__c);
        }
        List<Position__c> pos =new List<Position__c>();
        pos = [Select Status__c,No_Of_Vaccancies__c,
              (Select id,Name,Status__c from Job_Applications__r)
              from Position__c where id In : jobIds];
       
        List<Position__c> upList = new List<Position__c>();
        for(Position__c p : pos)
        {
            List<Job_Application__c> japs =p.Job_Applications__r;
            for(Job_Application__c js:japs)
            {
                if(js.status__c =='Hired')
                {
                    j++;
                }
               
            }
             if(p.No_Of_Vaccancies__c ==j)
             {
                  p.No_Of_Vaccancies__c = 0;
                    p.Status__c ='Closed-Filled';
                    upList.add(p);
             }
           
        }
        update upList;
   
    }
   
}