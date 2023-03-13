public class Day40C10 implements database.Batchable<sobject>,database.stateful {

    
public decimal ustotal=0;
    public decimal uktotal=0;
     public decimal Asia=0;
     public decimal grandtotal=0;
    public Day40C10(decimal ustotal,decimal uktotal)
    {
        this.ustotal=ustotal;
        this.uktotal=uktotal;
    }
    public final String Query='Select name,city,country,AnnualRevenue,Region__c from lead where Region__c=\'ASIA\'';
    public Database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator(Query);
    }
    public void execute(database.BatchableContext bc,list<lead> lds)
    {
        for(lead l:lds)
        {
            asia=asia+l.AnnualRevenue;
        }
        
    }
    public void finish(database.BatchableContext bc)
    {
       System.debug('usTotal='+ustotal);
        System.debug('ukTotal='+uktotal);
        System.debug('asiaTotal='+asia);
        grandtotal=ustotal+uktotal+asia;
        System.debug('grandtotal='+grandtotal);
    }

}