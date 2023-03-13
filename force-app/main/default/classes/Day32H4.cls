public class Day32H4 {
    
    
    
    public static void displayingPositionrecords()
    {
        //Write an Apex class to display the positions with minpay<50000 and location is other than 'Hyderabad'
      list<Position__c> positons=[select Location__c,Min_Pay__c
                                    from Position__c
                                  where Min_Pay__c<50000 AND Location__c NOT IN('Hyderabad, India')];
        for(Position__c p:positons)
        system.debug('Positon records:'+p);
    }

}

/*Day32H4 obj3 =new Day32H4();
obj3.Records();*/