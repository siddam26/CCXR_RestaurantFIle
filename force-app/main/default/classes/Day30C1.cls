public with sharing class Day30C1 {
    public void displaypositioncount()
    {
        list<Position__c> pos = [select id from Position__c];
        integer poscount = pos.size();
        system.debug('with sharing-No of records='+poscount);
    }

}
/*Day30C1 obj = new Day30C1();
obj.displaypositioncount();*/