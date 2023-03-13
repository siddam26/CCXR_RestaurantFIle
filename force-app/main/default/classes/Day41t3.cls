public class Day41t3 {
    //Insert 5 Positions(Add 3 records with any erors) and display the DML operation result
    
    public void insertingPositionRecordsAndDisplayingErrors()
     {
         try
         {
            list<position__c> pos1 =new list<position__c>();
         
         position__c pos2 = new position__c(Status__c='New Position',
                                          Type__c='Full Time',Location__c='Hyderabad, India',Min_Pay__c=1520.00,Max_Pay__c=30000.00);
         
          position__c pos3 = new position__c(Functional_Area__c='Finance',Name='Accountant',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Hyderabad, India',Min_Pay__c=26750.00,Max_Pay__c=30000.00);
         
          position__c pos4 = new position__c(Functional_Area__c='Retail Operations',Name='product manager1',Status__c='New Position',
                                          Type__c='monthly',Location__c='Britan, Uk',Min_Pay__c=23000.00,Max_Pay__c=24000.00);
         
          position__c pos5 = new position__c(Functional_Area__c='Human Resource',Name='HR Director',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Britan, Uk',Min_Pay__c=45000.00,Max_Pay__c=50000.00);
         
          position__c pos6 = new position__c(Functional_Area__c='Miscellaneous',Name='Eletrician',Status__c='New Position',
                                          Type__c='Full Time',Location__c='Austin, Netherlands',Min_Pay__c=35000.00,Max_Pay__c=30000.00);
         
         
         pos1.add(pos2);
         pos1.add(pos3);
         pos1.add(pos4);
         pos1.add(pos5);
         pos1.add(pos6);
       
         list<database.SaveResult> dbsr = database.insert(pos1,false);
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

/*Day41t3 obj = new Day41t3();
obj.insertingPositionRecordsAndDisplayingErrors();*/