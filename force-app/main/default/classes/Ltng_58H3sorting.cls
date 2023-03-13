public class Ltng_58H3sorting 
{
    

    @AuraEnabled
    public static List<Position__c> fetchpos(){
        List<Position__c> pos=[Select Name,Status__c,Location__c,Functional_Area__c,Max_Pay__c
                              from Position__c limit 20];
        return pos;
    }
}