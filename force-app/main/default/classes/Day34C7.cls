public class Day34C7 {
    
    account a1=[select Name,Type,Industry,
               (select CaseNumber,	Status,	Priority from Cases where Status='Escalated')
               from account where Name='Express Logistics and Transport' ];
    
     public void displayCases()
     {
         list<Case> ca=a1.Cases;
         system.debug('Account Name:'+a1.Name);
         system.debug('Account Type:'+a1.Type);
         system.debug('Account industry:'+a1.Industry);
         system.debug('Esacalted Cases:');
         for(Case ca1:ca)
         {
             system.debug('Escalted cases are:'+ca1);
         }
     }

}