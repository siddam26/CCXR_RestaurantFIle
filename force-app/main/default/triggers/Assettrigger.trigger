trigger Assettrigger on Asset (after insert)
{
    if(trigger.isafter && trigger.isinsert)
    {
        assetHandler.populateOpportunityAndLineItems(trigger.new);
    }

}