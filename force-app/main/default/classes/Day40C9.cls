public class Day40C9 implements database.Batchable<sobject>,database.stateful {
    
    public decimal ustotal=0;
    public decimal uktotal=0;
    public Day40C9(decimal ustotal)
    {
        this.ustotal=ustotal;
    }
    public final String Query='Select name,city,country,AnnualRevenue,Region__c from lead where Region__c=\'UK\'';
    public Database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(Query);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
            uktotal=uktotal+l.AnnualRevenue;
        }
        
    }
    public void finish(database.BatchableContext bc)
    {
        Day40C10 asiabatchobj=new Day40C10(Ustotal,uktotal);
        id asia=database.executeBatch(asiabatchobj,200);
    }
}