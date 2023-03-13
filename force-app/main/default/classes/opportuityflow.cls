public class opportuityflow 
{
    @invocablemethod
  
    public static void getquote(list<String> opr)
    {
        list<id> quotess = new list<id>();
        list<opportunity> opp=[select id,name,
                              (select OpportunityId,Name,Status from Quotes where Status!='Accepted' )
                              from opportunity where id in:opr];
        for(opportunity opp1:opp)
        {
            list<quote> q1 = opp1.Quotes;
            for(quote q2:q1)
            {
                quotess.add(q2.Id);
            }
        }
        list<quote> qos=[select id from quote where id in:quotess];
        delete qos;
    }
    

}