public class Day38H1 implements schedulable{
    
   //Write an Apex class to run on every 15th of month to delete position records opened a month ago and without  any job applications
    public void execute(schedulablecontext sc)
    {
        list<Position__c> displayingPositionsOfLastMonth=[select name,Functional_Area__c,Open_Date__c,
                                                          (select name from Job_Applications__r )
                                                          from Position__c 
                                                          where Open_Date__c=LAST_N_MONTHS:1];
        for(Position__c Pos1:displayingPositionsOfLastMonth)
        {
            List<Job_Application__c> japp1 = pos1.Job_Applications__r;
            if(japp1.size()==0)
            {
                delete pos1;
                
                                
            }
           /*/ else
            {
                system.debug('there are positons with job applications');
            }*/
           
        }
        list<Position__c> Recyclebinjaap=[select name,Functional_Area__c,Open_Date__c,
                                                          (select name from Job_Applications__r )
                                                          from Position__c ALLROWS
                                                          where Open_Date__c=LAST_N_MONTHS:1 AND isdeleted=true ];
        system.debug('deleted positions:'+Recyclebinjaap);
  
    }
    
}

/*Day38H1 obj = new Day38H1();
string timeexpr='0 0 0 15 * ?';
id schjobid = system.schedule('Myposition', timeexpr, obj);*/