public class Day33H8 {
    //9.Write an Apex class to display the Position  records created today for 'Warehousing' department.
    
    public void records()
    {
        list<Position__c> pos4 =[select Name,Functional_Area__c
                                from Position__c
                                where CreatedDate = TODAY AND Functional_Area__c ='Ware Housing'];
        
        for(Position__c pos:pos4)
        {
            system.debug('Ware Housing Records:'+pos);
        }
    }

}


/*Day33H8 obj =new Day33H8();
obj.records();*/