public class Day39h {
    
    list<Position__c> updatedpositions = new list<Position__c>();
    list<Position__c> pos1 = [select Name,Min_Pay__c,Max_Pay__c,Functional_Area__c
                              from Position__c];
    public void display()
    {
        for(Position__c pos2:pos1)
        {
            if(pos2.Min_Pay__c == 50000 )
            {
                pos2.Min_Pay__c = 55000;
                updatedpositions.add(pos2);
            }
            if(pos2.Max_Pay__c == NULL )
            {
                pos2.Max_Pay__c = 65000;
                updatedpositions.add(pos2);
            }
            
        }
        update updatedpositions;
    }
    
}//count is 37