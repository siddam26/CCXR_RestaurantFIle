trigger positionHandler on Position__c (before update,before insert)
{
    if(trigger.isbefore && trigger.isupdate)
    {
        positionHandler.updateUserNameOfPosition(trigger.new);
    }
    if(trigger.isbefore && trigger.isupdate)
    {
        positionHandler.settingownernameonposition(trigger.new);
    }

}