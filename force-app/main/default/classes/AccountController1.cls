public with sharing class AccountController1 {
    public AccountController1() {

    }
    @AuraEnabled(cacheable=true)
        public static  list<Account> Accrec(){
            list<Account> accs=[Select id,name,Type,Industry from Account limit 25];
          return accs;
                       
        
        }
        @AuraEnabled(cacheable=true)
    public static List<Account> getacc(){
       return [Select id,name,Type,Industry,Active__c 
       from Account
       where Active__c='No' limit 20];
    }
    @AuraEnabled
    public static void deleteAcc(List<Id> selAccId){
        List<Account> AccList = new List<Account>();
        AccList = [Select id from Account where id in:selAccId];
        if(AccList != null && AccList.size()>0){
            delete AccList;
        }
}
}