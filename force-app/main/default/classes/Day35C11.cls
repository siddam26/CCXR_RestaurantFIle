public class Day35C11 {
    
    Contact c2=[select FirstName,Name,Phone,
               	Owner.profile.Name
               from Contact
               where FirstName='Kavya'];
    
    public void displayAccountOwnerName()
    {
        system.debug('contact name:'+c2.FirstName);
        system.debug('contact name:'+c2.Phone);
        system.debug('Account owner name:'+c2.Owner.profile.Name);
        
        
    }

}

/*Day35C11 obj =new Day35C11();
obj.displayAccountOwnerName();*/