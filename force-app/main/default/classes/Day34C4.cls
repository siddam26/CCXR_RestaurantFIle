public class Day34C4 {
    Position__c position=[select name,Status__c,Location__c,
                          (select name,Status__c,Total_Rating__c from Job_Applications__r)
                          from Position__c where Name='Warehouse worker'];
    list<Position__c> positions=[select name,Status__c,Location__c,
                                 (select name,Status__c,Total_Rating__c from  Job_Applications__r)
                                 from Position__c where Location__c='Hyderabad,Telangana']; 
    public void display()
    {
        System.debug('Position name='+position.Name);
        System.debug('position location='+position.Location__c);
        list<Job_Application__c> japp=position.Job_Applications__r;
        for(Job_Application__c j:japp)
        {
            System.debug('job application name='+j.name);
            System.debug('job application status='+j.status__c);
            System.debug('job application rating='+j.Total_Rating__c);
        }
        for(Position__c p:positions)
        {
            System.debug('Position name='+p.Name);
            System.debug('position location='+p.Location__c); 
            list<Job_Application__c> ja=p.Job_Applications__r;
            for(Job_Application__c ja2:ja)
            {
                System.debug('job application name='+ja2.name);
                System.debug('job application status='+ja2.status__c);
                System.debug('job application rating='+ja2.Total_Rating__c);
            }
        }
    }
}