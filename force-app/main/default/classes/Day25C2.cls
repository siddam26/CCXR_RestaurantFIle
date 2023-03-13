public class Day25C2 {
    Account acc=new Account(name='Acctest1',Industry='Education',Phone='8564231782');
    Position__c p = new Position__c(Name ='SObject Position',Functional_Area__c='Information Technology',Min_Pay__c=25000,Max_Pay__c=30000);
    public void insertrecs(){
        insert acc;
        insert p;
    }
    public void PutGetMethods(){
        Account acc2 = new Account();
        acc2.put('name','CCTest20');
        acc2.put('Industry','Electronic');
        acc2.put('phone','524896324');
        insert acc2;
        system.debug('Acc Name='+acc2.get('name'));
         system.debug('Industry='+acc2.get('Industry'));
         system.debug('Phone='+acc2.get('Phone'));
    }

}