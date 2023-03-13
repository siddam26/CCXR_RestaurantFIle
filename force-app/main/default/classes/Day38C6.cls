public class Day38C6 {
    
    @future
    public static void createAccountsAndContacts()
    {
        for(integer i=1;i<5;i++)
        {
            account a1= new account(Name='future account'+i,Industry='Energy');
            insert a1;
             ID acctID = a1.ID;
            list<contact> contactList = new list<contact>();
            for(integer j=1;j<=i;j++)
            {
                contact c2 = new contact(lastname='future contact'+j,Phone='4587',AccountId=acctID);
                contactList.add(c2);
               
            }
            insert contactList;
        }
    }

}

/*Day38C6.createAccountsAndContacts();*/