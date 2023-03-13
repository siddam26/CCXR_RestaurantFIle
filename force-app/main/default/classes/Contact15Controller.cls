public class Contact15Controller 
{

    @AuraEnabled
    public static void createcon(string FN,string LN,string PH,string EM ,id aid)
    {
        contact con=new contact();
        con.FirstName=FN;
        con.LastName=LN;
        con.Phone=PH;
        con.Email=EM;
        con.AccountId=aid;
        insert con;
    
        
    }
}