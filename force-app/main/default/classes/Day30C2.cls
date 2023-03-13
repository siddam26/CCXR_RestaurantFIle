public without sharing class Day30C2 {
    public void displaypositioncount()
    {
        list<Position__c> pos =[select id from Position__c];
        integer poscount = pos.size();
        system.debug('without sharing-No of records='+poscount);
    }

}
/*Day30C2 obj3 = new Day30C2();
 obj3.displaypositioncount();*/