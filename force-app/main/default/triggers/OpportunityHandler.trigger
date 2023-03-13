//Send an email to opportunity owner when opp Amount>10000000 and set rating as hot
trigger OpportunityHandler on Opportunity (after insert,after update,before update,before insert)
{
    
    /*if(trigger.isafter &&(trigger.isinsert || trigger.isupdate))
    {
        OpportunityHandler.updateaccount(trigger.new);
    }
    
    if(trigger.isafter && (trigger.isinsert || trigger.isupdate))
    {
        OpportunityHandler.calculatingTotalOpportunityAmount(trigger.new);
    }
    if(trigger.isafter && trigger.isupdate)
    {
        OpportunityHandler.updatingaccountValue(trigger.new);
    }
    if(trigger.isafter && trigger.isinsert)
    {
        OpportunityHandler.dispalyingMinAndMaxDate(trigger.new);
    }*/
    
    
    
   
 }