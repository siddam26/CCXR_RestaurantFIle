public class Day36H3 {
    //Write an Apex class to insert list of positions  records using database class method.
     public void insertingPositionRecords()
     {
         try
         {
             
         
         position__c p1 = new position__c(Functional_Area__c='Human Resource',Name='HR coordinator1',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Hyderabad, India',Min_Pay__c=25000.00,Max_Pay__c=30000.00);
         
          position__c p2 = new position__c(Functional_Area__c='Finance',Name='Auditor1',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Hyderabad, India',Min_Pay__c=20000.00,Max_Pay__c=25000.00);
         
          position__c p3 = new position__c(Functional_Area__c='Retail Operations',Name='Store manager1',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Britan, Uk',Min_Pay__c=25000.00,Max_Pay__c=24000.00);
         
          position__c p4 = new position__c(Functional_Area__c='Human Resource',Name='Divisional Head1',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Britan, Uk',Min_Pay__c=35000.00,Max_Pay__c=40000.00);
         
          position__c p5 = new position__c(Functional_Area__c='Miscellaneous',Name='Construction1',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Austin, Netherlands',Min_Pay__c=25000.00,Max_Pay__c=30000.00);
         
         list<position__c> pos =new list<position__c>();
         pos.add(p1);
         pos.add(p2);
         pos.add(p3);
         pos.add(p4);
         pos.add(p5);
       
         list<database.SaveResult> dbsr = database.insert(pos,false);
         for(database.SaveResult dr:dbsr)
         {
             if(dr.issuccess())
             {
                 system.debug('record inserted successfully:'+dr.id);
             }
             else
             {
                 list<database.Error> errs =dr.getErrors();
                 for(database.Error err:errs)
                 {
                     system.debug('Error message:'+err.getMessage());
                     system.debug('Error code:'+err.getStatusCode());
                     system.debug('Error fields:'+err.getFields());
                 }
             }
         }
             
     }catch(DMLException de)
               {
                 
                }
     }
}