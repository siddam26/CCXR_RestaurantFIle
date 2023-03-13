public with sharing class AccountCreation {
    public AccountCreation() {

    }
    @AuraEnabled
    public static Account createAccount(Account accountRecobj)
    {
        try 
        {
            insert accountRecobj;
            return accountRecobj;
        } 
        catch (Exception ex) 
        {
            throw new AuraHandledException(ex.getMessage());
        }
    }
    @AuraEnabled
    public static list<Account> createAccounts(list<Account> accountList)
    {
        try 
        {
            insert accountList;
            return accountList;
        } 
        catch (Exception ex) 
        {
            throw new AuraHandledException(ex.getMessage());
        }
    }
}