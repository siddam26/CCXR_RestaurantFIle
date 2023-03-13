public class Day35C1 {
    
    //display it positions
    public void displayItRecords()
    {
    list<Position__c> pos =[select Name,Functional_Area__c
                           from Position__c where Functional_Area__c='Information Technology'];
        
        system.debug('It Records Are::::');
        for(Position__c p1:pos)
        {
            system.debug('position Name:'+p1.Name);
            system.debug('Position Functional Area:'+p1.Functional_Area__c);
        }
    }
    
    
    
    

}

/*Day35C1 obj = new Day35C1();
obj.displayItRecords();*/