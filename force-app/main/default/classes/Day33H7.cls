public class Day33H7 {
    
    //8.Write an Apex class to display the position records created by 'Recruiter'
     public void records()
     {
         list<Position__c> pos2 =[select Owner.Name,Name
                                 from Position__c
                                 where CreatedBy.Name ='b3ssrecruiter'];
         
         for(Position__c pos3:pos2)
         {
             system.debug('position records created by Recruiter are:'+pos3);
         }
     }

}

/*Day33H7 obj =new Day33H7();
obj.records();*/