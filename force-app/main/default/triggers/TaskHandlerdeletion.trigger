trigger TaskHandlerdeletion on Task (before delete)
{
    if(trigger.isbefore && trigger.isdelete)
    {
        TaskHandler.checkingProfile(trigger.old);
    }

}