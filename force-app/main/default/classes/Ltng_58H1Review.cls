public class Ltng_58H1Review 
{
    @AuraEnabled
    public static list<Review__c> reviews(Id jaid)
    {
        list<Review__c> r1 =[select Name,Rating__c
                                        from Review__c
                                        where Job_Application__r.Id =:jaid];
        return r1;
    }

}