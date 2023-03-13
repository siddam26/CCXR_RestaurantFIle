public class PositionMaps
{
    @AuraEnabled
    public static list<Position__c> positons(Id pid)
    {
       
        list<Position__c> pos =[select Location__c from Position__c where Id=:pid  ];
        return pos;
        
    }


}