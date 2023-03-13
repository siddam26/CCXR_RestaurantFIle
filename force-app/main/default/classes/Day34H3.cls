public class Day34H3 {
    
    list<Position__c> p1=[select Name,Status__c,Open_Date__c,
                         (select Name from Job_Postings__r)
                         from Position__c ];
    
    public void displaypositionwithjobpostings()
    {
       
        for(Position__c pos:p1)
        {
             system.debug('Positions::::');
        system.debug('Position name:'+pos.Name);
            system.debug('POsition status:'+pos.Status__c);
            system.debug('Position open date:'+pos.Open_Date__c);
            list<Job_Posting__c> jps = Pos.Job_Postings__r;
            system.debug('Job postings::::');
            for(Job_Posting__c jps1:jps)
            {
                system.debug('Records are:'+jps1.Name);
            }
            
            
        }
    }

}