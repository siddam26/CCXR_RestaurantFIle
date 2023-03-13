public class Day33H4
{
    
    public void records()
    {
      list<contact> cont =[select name, email, phone from contact where phone != NULL AND Email !=NULL];
        
        for(contact c1:cont)
        {
            system.debug(c1);
        }
    }

}
/*
Day33H4 obj=new Day33H4();
obj.records();
*/