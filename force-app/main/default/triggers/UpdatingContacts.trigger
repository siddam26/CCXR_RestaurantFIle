trigger UpdatingContacts on Contact (after insert,after delete,before insert,before update) 
{
     if(trigger.isafter &&(trigger.isinsert))
    {
        UpdatingContactsOnAccnt.countContacts(trigger.new);
    }
    if(trigger.isafter &&(trigger.isdelete))
    {
        UpdatingContactsOnAccnt.countContacts(trigger.old);
    }
    
    /*if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
       {
           UpdatingContactsOnAccnt.checkingLastname(trigger.new);
       }*/
      if(trigger.isafter && trigger.isinsert)
      {
          UpdatingContactsOnAccnt.sendingEmailWhenContactIsInserted(trigger.new);
      }
    
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
    {
        UpdatingContactsOnAccnt.preventingDuplicateRecords(trigger.new);
    }
}