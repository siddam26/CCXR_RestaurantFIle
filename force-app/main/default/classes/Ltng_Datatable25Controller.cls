public class Ltng_Datatable25Controller
{
    @AuraEnabled
    public static list<contact> readcon(id cid)
    {
        list<contact> con = [select LastName,Phone,Email from contact where accountid=:cid];
        return con;
    }

}