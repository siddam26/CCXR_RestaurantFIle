public class exam6
{
    public  void createAccountsAndCases()
    {
        for(integer i=1;i<6;i++)
        {
            account a1= new account(Name='Exam Account'+i,Industry='Energy');
            insert a1;
             ID acctID = a1.ID;
            list<Case> casesList = new list<Case>();
            for(integer j=1;j<=3;j++)
            {
                Case c2 = new Case(Status='New',Origin='Phone',AccountId=acctID);
                casesList.add(c2);
               
            }
             List<Database.SaveResult> dbsr = database.insert(casesList,False);
            for(Database.SaveResult dr: dbsr)
            {
                if(dr.isSuccess())
                {
                   System.debug('Record inserted successfuly = '+dr.id); 
                }
                else
                {
                list<Database.Error> derr= dr.getErrors();
                for(database.error err : derr)
                {
                    System.debug('Error code = '+ err.getStatusCode());
                    System.debug('Error Field = '+ err.getFields());
                    System.debug('Error Message = '+ err.getMessage());
                }
                }
        }
    }
        

}
}