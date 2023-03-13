trigger CasesTrigger on Case (before insert) 
{
     if(trigger.isbefore && (trigger.isinsert || trigger.isupdate))
     {
         CasesHandler.checkingCaseOrigin(trigger.new);
     }

}