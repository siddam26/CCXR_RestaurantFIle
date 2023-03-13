public class Day33C4 {
    list<Position__c> positions = new list<Position__c>();
    list<Position__c> positions2 = new list<Position__c>();
    
    public void readPositions1()
    {
        positions=[select name,Min_Pay__c,Status__c,Location__c
                  from Position__c
                  where Open_Date__c < this_month];
        system.debug('Position records created before this month:');
        displaypositions();
        
         positions=[select name,Min_Pay__c,Status__c,Location__c
                  from Position__c
                  where Open_Date__c = this_week];
        system.debug('Position records created last week:');
        displaypositions();
        
         positions=[select name,Min_Pay__c,Status__c,Location__c
                  from Position__c
                  where Open_Date__c < LAST_N_YEARS:1];
        system.debug('Position records created last Year:');
        displaypositions();
    }
        
        public void ReadPositions2()
        {
            positions2 =[select name from Position__c ];
            system.debug('All Positions');
            displaypositions2();
            
            positions2 =[select name from Position__c ALL ROWS ];
            system.debug('ALL ROWS'+positions2.size());
            system.debug('All Positions');
            displaypositions2();
            
            positions2=[select name from Position__c
                       where isDeleted=true ALL ROWS];
            system.debug('ALL deleted rows='+positions2.size());
            system.debug('deleted records::');
            displaypositions2();
            
        }
        
        public void displaypositions()
        {
            for(Position__c p : positions)
            {
                system.debug(p);
            }
            
        }
        public void displaypositions2()
        {
            for(Position__c p : positions)
            {
                system.debug(p);
            }
        }
  
    }

/*Day33C4 obj =new Day33C4();
obj.readPositions1();
obj.ReadPositions2();*/