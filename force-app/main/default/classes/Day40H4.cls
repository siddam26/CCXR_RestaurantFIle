public class Day40H4 implements database.Batchable<sobject>,database.stateful{
    public  decimal usEmp=0;
    public  decimal ukEmp=0;
    public  decimal asiaEmp=0;
    public  decimal otherEmp=0;
    public decimal totalEmp=0;
    
    public Day40H4(decimal usEmp,decimal ukEmp,decimal asiaEmp)
    {
        this.usEmp=usEmp;
        this.ukEmp=ukEmp;
        this.asiaEmp=asiaEmp;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,Region__c,NumberOfEmployees from lead where Region__c='OTHERS']);
    }
    public void execute(database.BatchableContext bc,list<lead> l7)
    {
        for(lead l8:l7)
        {
         otherEmp=otherEmp+l8.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
       System.debug('US Region Employee Count='+usEmp);
        System.debug('Uk Region Employee Count='+ukEmp);
        System.debug('Asia Region Employee Count='+asiaEmp);
        System.debug('Other Region Employee count='+otherEmp);
        totalEmp=usEmp + ukEmp + asiaEmp + otherEmp;
        System.debug('Total Employees Count='+totalEmp);
    }

}