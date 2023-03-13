public class Day35C8 {
    
    Contact c1=[select FirstName,Name,Phone,
               	Account.Owner.Name
               from Contact
               where FirstName='Kavya'];
    
    public void displayAccountOwnerName()
    {
        system.debug('contact name:'+c1.FirstName);
        system.debug('contact name:'+c1.Phone);
        system.debug('Account owner name:'+c1.Account.Owner.Name);
        
        
    }

}

/*Day35C8 obj =new Day35C8();
obj.displayAccountOwnerName();*/