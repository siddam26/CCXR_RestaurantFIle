@istest
public class Day32H4_test
{
    @istest
    public static void displayPositionRecords()
    {
        list<Position__c> positons = new list<Position__c>();
        Position__c pos1 = new Position__c(Name='PositionTest',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c = 52500,Location__c='Austin, Netherlands');
        Position__c pos2 = new Position__c(Name='PositionTest1',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c = 52500,Location__c='Hyderabad, India');
        Position__c pos3 = new Position__c(Name='PositionTest2',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c = 42500,Location__c='Hyderabad, India');
        Position__c pos4 = new Position__c(Name='PositionTest3',Functional_Area__c='Miscellaneous',
                                           Min_Pay__c = 42500,Location__c='Austin, Netherlands');
        positons.add(pos1);
        positons.add(pos2);
        positons.add(pos3);
         positons.add(pos4);
        
        
        insert positons;
        
        Day32H4.displayingPositionrecords();
        
        list<Position__c> retrivingpositons =[select Location__c,Min_Pay__c
                                    from Position__c
                                  where Min_Pay__c<50000 AND Location__c NOT IN('Hyderabad, India')];
        integer x = retrivingpositons.size();
        system.assertEquals(1,x);
        
        
    }

}