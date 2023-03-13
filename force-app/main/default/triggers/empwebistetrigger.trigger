trigger empwebistetrigger on Employement_Website_Name__c (before insert)
{
    if(trigger.isbefore && trigger.isinsert)
    {
        EmpwebsiteHandler.calculatingTax(trigger.new);
    }

}