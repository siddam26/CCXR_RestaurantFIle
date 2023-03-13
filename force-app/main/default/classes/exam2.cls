public class exam2
{
    public  static void UpdatingAccountStatus(list<order> ordlist)
    {
       list<account> updatedaccount = new list<account>();
        list<id> accid = new list<id>();
        for(order ord1:ordlist)
        {
            if(ord1.AccountId !=NULL)
            {
                accid.add(ord1.AccountId);
            }
        }
        
        
        list<account> accrec=[select id,name,TotalOpportunityAmount__c,Active__c,
            (select AccountId,OpportunityId,EffectiveDate 
                            from Orders where CreatedDate <= LAST_N_DAYS:10 AND AccountId=:accid)
                             from Account] ;
        for(account a1:accrec)
        {
            list<order> o1=a1.Orders;
            if(o1.size()!=null)
            {
                a1.Active__c='yes';
                update a1;
            }
        }
        
        
       
    }
    
    
    
    
}