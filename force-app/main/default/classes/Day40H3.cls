public class Day40H3 implements database.Batchable<sobject>,database.stateful{
    public  decimal usEmp=0;
    public  decimal ukEmp=0;
    public  decimal asiaEmp=0;
    public Day40H3(decimal usEmp,decimal ukEmp)
    {
        this.usEmp=usEmp;
        this.ukEmp=ukEmp;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,Region__c,NumberOfEmployees from lead where Region__c='ASIA']);
    }
    public void execute(database.BatchableContext bc,list<lead> l5)
    {
        for(lead l6:l5)
        {
         asiaEmp=asiaEmp+l6.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H4 otherEmployees=new Day40H4(usEmp,ukEmp,asiaEmp);
        id othersid=database.executeBatch(otherEmployees,200);
    }
}