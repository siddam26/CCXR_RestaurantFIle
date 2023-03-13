public class TaskHandler
{
    public static void checkingProfile(list<task> t)
    {
        id uid =userinfo.getProfileId();
        profile pname=[select id,name 
                       from profile
                      where id=:uid];
        for(task t1:t)
        {
             if(pname.name!='System Administrator')
        {
            t1.adderror('you cant delete this task,please contact admin for further information');
        }
        }
       
    }

}