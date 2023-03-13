public class positionHandler 
{
    public static void updateUserNameOfPosition(List<Position__c>poslist)
    {
        List<Id> idList = new List<Id>();
        for(Position__c pos : poslist)
        {
            idList.add(pos.Createdbyid);
        }
        List<user> ulist = [Select id,Name 
                               from user 
                               where user.id In : idList];
       
        for(Position__c p : poslist)
        {
            for(User u : ulist)
            {
                if(p.Createdbyid == u.id)
                {
                   p.UpdateDetails__c = u.name;
                }
            }
        }
   }
    
    //Trigger to set the owner of  position record with createdId if the functional area 
     //is either finance or warehousing
     public static void settingownernameonposition(list<Position__c> pos)
     {
         for(Position__c pos1:pos)
         {
             if(pos1.Functional_Area__c =='Finance' || pos1.Functional_Area__c =='Ware Housing')
             {
                 pos1.OwnerId = pos1.createdbyid;
             }
         }
     }
}