public with sharing class accountIndustry {
    public accountIndustry() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount1()
    {
        List<Account> accs=[SELECT id,name,AnnualRevenue,Industry
                            from Account
                            WHERE Industry='Banking' WITH SECURITY_ENFORCED];
         return accs;
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccount2()
    {
        List<Account> acc1=[SELECT id,name,AnnualRevenue,Industry
                            from Account
                             WHERE Industry='Agriculture'
                             WITH SECURITY_ENFORCED];
                            
        return acc1;
    }
    @AuraEnabled (Cacheable=true)
    public static List<Account> accountType(){
      List<Account> accs=[select id,Name,Type,Industry
      From Account
      WHERE Type='Prospect'
      WITH SECURITY_ENFORCED
      LIMIT 10];
      return accs;  
    }
    @AuraEnabled (Cacheable=true)
    public static List<Account> accountType1(){
      List<Account> accs1=[select id,Name,Type,Industry
      From Account
      WHERE Type='Customer - Direct'
      WITH SECURITY_ENFORCED];
      return accs1;  
    }
}