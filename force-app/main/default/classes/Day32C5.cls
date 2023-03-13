public class Day32C5 {

    //Logical Operator (AND/OR/NOT)
    public void displayRecords(){
    
        List<Account> acc1 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where AnnualRevenue > 50000 AND Industry ='Apparel'];
		List<Account> acc2 = [Select name,AnnualRevenue, Phone ,Industry
                              from Account 
                              where AnnualRevenue > 50000 OR Industry ='Apparel'];
        List<Account> acc3 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where NOT Industry ='Apparel'];
        System.debug('AND Result :::-');
        for(Account a : acc1){
            System.debug(a);
        }
        System.debug('OR Result :::-');
        for(Account a : acc2){
            System.debug(a);
        }
        System.debug('NOT Result :::-');
        for(Account a : acc3){
            System.debug(a);
        }
       
   //INCLUDES/EXCLUDES(for that we have create multi.picklist)
     
     /* List<Account> acc4 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where Branches__c INCLUDES('HYD','PUNE')];
        List<Account> acc5 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where Branches__c EXCLUDES('HYD','PUNE')];
        System.debug('INCLUDES Result :::-');
        for(Account a : acc4){
            System.debug(a);
        }
        System.debug('EXCLUDES Result :::-');
        for(Account a : acc5){
            System.debug(a);
        }
      */
       
    //  IN/NOT IN
        List<Account> acc6 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where Industry IN ('Apparel','Banking')];
        List<Account> acc7 = [Select name,AnnualRevenue, Phone,Industry 
                              from Account 
                              where Industry NOT IN ('Apparel','Banking')];
        System.debug('IN Result :::-');
        for(Account a : acc6){
            System.debug(a);
        }
        System.debug('NOT IN Result :::-');
        for(Account a : acc7){
            System.debug(a);
        }
        
    }
}