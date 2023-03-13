public class CasesHandler {
    
    public static void checkingCaseOrigin(list<case> c1)
    {
        for(case c2:c1)
        {
            if(c2.Origin=='Email')
            {
                c2.Status='New';
                c2.Priority='Medium';
            }
        }
    }

}