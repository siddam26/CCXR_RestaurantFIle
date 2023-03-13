public class Day36H2 {
    //Write an Apex class to insert a lead record using standalone statement.
    public void insertingLeadRecord()
    {
        Lead l1 = new Lead(Company='CommerceCX',LastName='James',LeadSource='Phone Inquiry',Industry='Technology',Phone='54859623');
        insert l1;
    }
  
}

/*Day36H2 obj =new Day36H2();
obj.insertingLeadRecord();*/