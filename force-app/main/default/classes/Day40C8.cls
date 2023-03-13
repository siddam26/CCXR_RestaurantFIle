public class Day40C8 implements database.Batchable<Sobject>,database.stateful {
    public decimal ustotal=0;
    
    public final String Query='Select name,city,country,AnnualRevenue,Region__c from lead where Region__c=\'USA\'';
    public Database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(Query);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
            Ustotal=ustotal+l.AnnualRevenue;
        }
        
    }
    public void finish(database.BatchableContext bc)
    {
        Day40C9 Ukbatchobj=new Day40C9(Ustotal);
       id batchjobid=database.executeBatch(Ukbatchobj);
    }

}