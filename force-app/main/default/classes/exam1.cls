public class exam1 implements Database.Batchable<sObject>
{
    public final string query ='Select Name,AnnualRevenue,NumberOfEmployees from Account';
    
    public DataBase.QueryLocator start(DataBase.BatchableContext bc)
    {
        return Database.getQueryLocator(query);
    }
     public void execute(DataBase.BatchableContext bc , list<Account> accs)
     {
         list<Account> UpdatedAccs= new  list<Account>();
         for(Account accs2:accs)
         {
             if(accs2.AnnualRevenue <3000000)
             {
                 accs2.NumberOfEmployees=30;
                 UpdatedAccs.add(accs2);
             }
             else
             {
                 accs2.NumberOfEmployees=accs2.NumberOfEmployees;
                 UpdatedAccs.add(accs2);
             }
         }
         update UpdatedAccs;
     }
    public void finish(DataBase.BatchableContext bc)
    {
        system.debug('Number of employees  has been updated succesfully');
    }

}
/*exam1 obj=new exam1();
id bid=database.executeBatch(obj);
AsyncApexJob a1 = [SELECT Id, Status, NumberOfErrors
                    FROM AsyncApexJob WHERE ID =: bid ];
system.debug(a1);*/