public class Deletingcontactswithoutemailorphone 
{
    @invocablemethod
    public static void getcontacts(list<string> accid)
    {
        list<contact> con=[select AccountId,Phone,Email 
                           from contact
                       where AccountId in:accid AND( Phone=null OR Email=null)];
        
        delete con;
        
            
    }

}