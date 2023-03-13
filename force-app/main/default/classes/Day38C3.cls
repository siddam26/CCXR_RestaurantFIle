//queueable example
public class Day38C3 implements Queueable {
    
    public void execute(Queueablecontext qc)
    {
        account a =new account(name='Queueableacct3',phone='5479892',industry='Education');
        insert a;
    }
   
}

/*Day38C3 qobj= new Day38C3();
id qjid = system.enqueueJob(qobj);
system.debug(qobj);
AsyncApexJob aj =[select status from AsyncApexJob
                 where id=:qjid];
system.debug(aj);*/