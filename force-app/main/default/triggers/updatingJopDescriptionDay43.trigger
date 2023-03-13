trigger updatingJopDescriptionDay43 on Position__c (before insert,before update) {
    
  /* if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
   {
       updatingJobDescriptionDay43.updatejd(trigger.new);

       
   }*/
    if(trigger.isbefore &&  trigger.isupdate)
   {
       
       updatingJobDescriptionDay43.displayName(trigger.new);
       
   }

}