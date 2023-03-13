@isTest
public class AccountInsert_Test {
    @isTest
    public static void testInsert(){
        Account a=new Account(Name='MyTest',Industry='Education',phone='8754');
        insert a;
       AccountInsert.insertAcc();
        Account a2=[select name,industry,phone from Account where 
                   Name='MyTest'];
        string x=a2.name;
        System.assertEquals('MyTest',x);
        
            
    }

}