@istest
public class Day32H2_test 
{
    @istest
    public static void fetchingRecords()
    {
        list<Position__c> pos = new list<Position__c>();
        Position__c pos1 = new Position__c(Name='PositionTest',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c=22500,Location__c='Austin, Netherlands',Hiring_Manager__c='0055g00000E53EgAAJ');
         Position__c pos2 = new Position__c(Name='PositionTest1',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c=24500,Location__c='Tokyo, Japan',Hiring_Manager__c='0055g00000E53EgAAJ');
        Position__c pos3 = new Position__c(Name='PositionTest1',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c=24500,Location__c='Britan, Uk',Hiring_Manager__c='0055g00000E53EgAAJ');
        pos.add(pos1);
        pos.add(pos2);
        
        insert pos;
        Day32H2.Records();
        
        list<Position__c> positons2=[select Location__c,Min_Pay__c
                                    from Position__c where Min_Pay__c<25000 AND Location__c  IN('Austin, Netherlands','Tokyo, Japan')
                                     AND Hiring_Manager__c ='0055g00000E53EgAAJ'];
        
        integer x = positons2.size();
        system.assertEquals(2,x);
        
    }

}