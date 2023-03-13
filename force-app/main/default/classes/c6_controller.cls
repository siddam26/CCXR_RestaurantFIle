public class c6_controller 
{
    List<Account> DirectAccts=[select name,industry,phone
                               from Account 
                               where Industry='Education'];
    List<Account> ChannelAccts=[select name,industry,phone
                                from Account 
                                where Industry='Agriculture'];
    Public list<Account> getdirectAccts()
    {
        return DirectAccts;
    }
    Public list<Account> getchannelAccts()
    {
        return ChannelAccts;
    }
}