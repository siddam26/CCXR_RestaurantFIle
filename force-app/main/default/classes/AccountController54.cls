public with sharing class AccountController54 {
  @AuraEnabled(cacheable=true)
  public static List<Account> getAccountNames(String accountName) {
    String searchTerm = '%' + accountName + '%';
    return [SELECT Id, Name FROM Account WHERE Name LIKE :searchTerm LIMIT 10];
  }
}