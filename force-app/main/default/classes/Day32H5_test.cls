@istest
public class Day32H5_test 
{
    @istest
    public static void displayingAccountsWithEmail()
    {
        list<Account> acc = new list<Account>();
       
          account a1 = new account(Name = 'Account Test',EmailId__c = 'asdf@gmail.com');
          account a2 = new account(Name = 'Account Test1',EmailId__c = 'hill@gmail.com');
          account a3 = new account(Name = 'Account Test2',EmailId__c = 'hill@gmail.com');
          account a4 = new account(Name = 'Account Test3',EmailId__c = 'asdf@gmail.com'); 
        acc.add(a1);
        acc.add(a2);
        acc.add(a3);
        acc.add(a4);
        
        
        insert acc;
        Day32H5.displayingacctRecordsWithEmail();
        
        list<Account> accnt=[Select name,EmailId__c 
                             from Account
                             where EmailId__c='asdf@gmail.com'];
        integer x = accnt.size();
        system.assertEquals(2,x);
        
        
    }

}