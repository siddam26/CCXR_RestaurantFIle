public class accountchangeaurahandler 
{
    @AuraEnabled
    public static void createcaccount(string nam,string ph,string indus)
    {
        account acc=new account(name=nam,phone=ph,Industry=indus);
        insert acc ;
        
    }
    

}