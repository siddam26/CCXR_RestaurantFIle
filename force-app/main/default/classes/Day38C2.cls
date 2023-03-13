public class Day38C2 {
    //future example
    @future
    public static void dmlError()
    {
        for(integer i=0;i<150;i++)
        {
            account a2=[select name from account
                       where name='CCTest20'];
            system.debug(a2.name);
        }
    }

}

/*Day38C2.dmlError();*/