public class LtngH_PositiondataController15
{
    @AuraEnabled
     public static list<Position__c> readpositions(string searchpositionloc)
    {
        string searchposloc = searchpositionloc;
        list<Position__c> l1 =[select Name,Functional_Area__c,Location__c from Position__c where Location__c=:searchpositionloc limit 20];
        return l1;
    }

}