public class Day39H3 implements database.Batchable<sobject>{
    
    //.Write an Apex class using batch apex update the max pay of IT and Finance positions by 15%
    
    
    //public final string query='';
    public database.QueryLocator start(database.BatchableContext bc)
    {
        return database.getQueryLocator([select Name,Min_Pay__c,Max_Pay__c,Functional_Area__c 
                                         from Position__c 
                                         where Functional_Area__c IN('Information Technology','Finance')]);
    }
    public void execute(database.BatchableContext bc,list<Position__c> pos1)
    {
        list<Position__c> updatepositions2 = new list<Position__c>();
        
        for(Position__c pos3:pos1)
        {
            
            pos3.Max_Pay__c = pos3.Max_Pay__c+(0.15 * pos3.Max_Pay__c);
            updatepositions2.add(pos3);
        }
        update updatepositions2;
    }
    public void finish(database.BatchableContext bc)
    {
        system.debug('Maximum pay updated successfully');
    }
  
}

/*Day39H3 obj =new Day39H3();
id jobid=database.executeBatch(obj,200);*/