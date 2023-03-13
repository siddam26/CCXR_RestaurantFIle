public class ContactsController 
{
    @AuraEnabled
    public Static list<Contact> cons(Id accntid)
    {
        list<Contact> conss=[select LastName,Email,FirstName
                            from Contact where AccountId=:accntid];
        return conss;
        
        
    }

}