public class Day32H2 {
    //Write an Apex class to display the positions with minpay<25000,location as 'Boulder ,CO' or 'Austin.TX' and Hiring Manager as your recruiter.
    public static void Records()
    {
          list<Position__c> positons=[select Location__c,Min_Pay__c
                                    from Position__c where Min_Pay__c<25000 AND Location__c  IN('Austin, Netherlands','Tokyo, Japan') AND Hiring_Manager__c ='0055g00000E53EgAAJ'];
        
        
        for(Position__c p1:positons)
        {
            system.debug('Position records:'+p1);
        }
    }

}
/*Day32H2 obj3 =new Day32H2();
obj3.Records();*/