trigger Emailforceoandcaseownerday44 on Case (after update) 
{
    if(trigger.isAfter && trigger.isupdate)
    {
        Emailtoceoandcaseownerday44.email(trigger.new);
    }

}