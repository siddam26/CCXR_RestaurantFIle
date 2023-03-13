public class Day33H5 {
    
    //Write an Apex class to display the ITRecordType records.
    public void records()
    {
        list<Position__c> pos1 =[select Name,Functional_Area__c
                                from Position__c
                                where RecordType.Name ='IT Record Type' ];
        
        for(Position__c pos:pos1)
        {
            system.debug('Records with IT Record type are:'+pos);
        }
    }
    
    
  

}
/*Day33H5 obj =new Day33H5();
obj.records();*/







//RecordTypeId in (select Id FROM RecordType WHERE Name = 'IT Record Type')