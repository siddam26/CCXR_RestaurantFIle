trigger LeadHandlers on Lead (after insert,before insert)
{
    /*if(trigger.isafter && trigger.isinsert)
    {
        LeadHandler.sendingEmail(trigger.new);
    }*/
    if(trigger.isbefore && trigger.isinsert)
    {
       //LeadHandler.checkingLastNameOfLeadAndContact(trigger.new);
       LeadHandler.leadduplicates(trigger.new);
    }
    

}