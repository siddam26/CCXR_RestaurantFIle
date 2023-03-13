//Write an Apex class to display the Account record with an email as asdf@gmial.com.
public class Day32H5 {
     
    
    public static void displayingacctRecordsWithEmail()
    {
        list<Account> a=[Select name,AnnualRevenue,EmailId__c 
                      from Account
               where EmailId__c='asdf@gmail.com'];
        for(Account a1:a)
        {
             system.debug('Account records:'+a1);
        }
      
    }
    
         
   }
/*Day32H5 obj2 =  new Day32H5();
obj2.Records();*/