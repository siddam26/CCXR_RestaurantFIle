public with sharing class AccountLWCController1 {
    public AccountLWCController1() {

    }
    
        @AuraEnabled(cacheable=true)
        public static  list<Account> getAccount( String  firstnumber){
            list<Account> accs=[Select id,name,Type,Industry from Account 
                      Where Industry=:firstnumber];
          return accs;
                       
        
        }
   
}