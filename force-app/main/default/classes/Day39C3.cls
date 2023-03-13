public class Day39C3 {
    public void execute()
        
    {
        list<Position__c> updatedpositionswithsalsary = new list<Position__c>();
        list<Position__c> pos1 = [select  Name,Functional_Area__c,Min_Pay__c
                                  from Position__c
                                  where Functional_Area__c='Human Resource'];
        
        for(Position__c pos2:pos1)
        {
            if(pos2.Min_Pay__c!=NULL)
            {
                 pos2.Min_Pay__c =pos2.Min_Pay__c+(0.10*pos2.Min_Pay__c);
            
            updatedpositionswithsalsary.add(pos2);
            }
           
        }
        update updatedpositionswithsalsary;
        
    }
    
}

/*Day39C3 obj =new Day39C3();
obj.execute();*/