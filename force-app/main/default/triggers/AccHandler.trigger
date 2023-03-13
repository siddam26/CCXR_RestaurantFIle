trigger AccHandler on Account (before insert,before update,after insert,before delete,after update) 
{
    //list<account> acc = new list<account>();
    /*if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        AccountsHandler.updatingAccount(trigger.new);
    
    }*/
    if(trigger.isbefore && (trigger.isdelete))
    {
        AccHandler.preventingAccountDeletion(trigger.old);
    }
   /* if(trigger.isafter && trigger.isinsert)
    {
        AccHandler.updatingaccountopportunities(trigger.new);
    }*/
    
    /*if(trigger.isafter && trigger.isinsert)
    {
        AccHandler.displayingBillingAddress(trigger.new);
    }*/
    /*if(trigger.isafter && trigger.isupdate)
    {
        AccHandler.sendingEmail(trigger.new);
    }*/
    
    /*if(trigger.isafter && trigger.isupdate)
    {
        AccHandler.checkingAccountTypeAndsendingMail(trigger.new);
    }*/
    /*if(trigger.isafter && trigger.isupdate)
    {
      AccHandler.UpdatingAccountAndUpdatingopportunity(trigger.new);   
    }*/
   
   /*if(trigger.isafter && trigger.isUpdate)
   {
       AccHandler.updatingBillingCityOnContact(trigger.new);
   }*/
    if(trigger.isbefore && trigger.isupdate)
    {
        AccHandler.updatingUsageEndDateOnAccount(trigger.new);
        
    }
    if(trigger.isafter && trigger.isinsert)
    {
        AccHandler.sendEmailToContactRelatedToAccount(trigger.new,trigger.oldmap);
    }
 

}