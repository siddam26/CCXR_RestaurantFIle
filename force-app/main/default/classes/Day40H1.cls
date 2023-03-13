public class Day40H1 implements database.Batchable<sobject>,database.stateful{
   public  decimal usEmp=0;
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([Select name,Region__c,NumberOfEmployees from lead where Region__c='USA']);
    }
    public void execute(database.BatchableContext bc,list<lead> l1)
    {
        for(lead l2:l1)
        {
         usEmp=usEmp+l2.NumberOfEmployees;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        Day40H2 ukEmp=new Day40H2(usEmp);
        id ukid=database.executeBatch(ukEmp,200);
    }
    }


/*Day40H1 obj = new Day40H1();
id jobid=database.executeBatch(obj,250);*/