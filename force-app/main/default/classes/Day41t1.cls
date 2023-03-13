public class Day41t1 implements database.Batchable<sobject>,database.stateful {
    //Write an Apex class to find the Total of 'Purchased List' sourced Leads with Status Working Contacted using Batch apex
    decimal grandtotal=0;
    public database.QueryLocator start(Database.BatchableContext bc)
    {
        return database.getQueryLocator([select lastname,AnnualRevenue,LeadSource,Status
                                        from lead where LeadSource='Purchased List' AND Status ='Working - Contacted']);
    }
    public void execute(Database.BatchableContext bc,list<lead> lds)
    {
        for(lead lds1:lds)
        {
            grandtotal = grandtotal+lds1.AnnualRevenue;
        }
    }
    public void finish(database.BatchableContext bc)
    {
        system.debug('Lead records with status working contact and Sourced purchased list:::::');
        system.debug(grandtotal);
    }

}