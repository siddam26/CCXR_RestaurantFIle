public class Day40H2 implements database.Batchable<sobject>,database.stateful {
    public  decimal usEmp=0;
    public  decimal ukEmp=0;
    public Day40H2(decimal usEmp)
    {
        this.usEmp=usEmp;
    }
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,Region__c,NumberOfEmployees from lead where Region__c='UK']);
    }
    public void execute(database.BatchableContext bc,list<lead> l3)
    {
        for(lead l4:l3)
        {
            ukEmp=ukEmp+l4.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H3 asiaEmp=new Day40H3(usEmp,ukEmp);
        id asiaid=database.executeBatch(asiaEmp,200);
    }
}