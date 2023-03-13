public class updatingJobDescriptionDay43 
{
    public static void updatejd(list<position__c> pos)
    {
         for(Position__c pos1:pos)
       {
        if(pos1.Job_Description__c == NULL )
           {
            pos1.Job_Description__c = pos1.Functional_Area__c;
           }
       }
        
    }
    public static void displayName(list<position__c> pos)
    {
        list<id> uid = new list<id>();
        for(position__c pos1:pos)
        {
            uid.add(pos1.CreatedById);
         }
        list<user> users=[select name from user where id in:uid];
        for(position__c pos2:pos)
        {
            for(user u1:users)
            {
                if(pos2.createdbyid == u1.id)
                {
                    pos2.UpdateDetails__c = u1.name;
                }
            }
        }
    }


}