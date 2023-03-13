trigger jobapplicationtrigger on Job_Application__c (after insert)
{
    if(trigger.isafter && trigger.isinsert)
    {
        settingPositionStatusDay43.setPositionStatus(trigger.new);
    }

}