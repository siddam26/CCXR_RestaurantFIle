public class Ltng_PositiondataController14
{
    @AuraEnabled
    public static list<Position__c> readpos()
    {
        list<Position__c> pos=[select Name,Functional_Area__c,Status__c,Location__c
                               from Position__c limit 10];
        return pos;
    }

}