public class Day38H6 {
    //Write an Apex class using Future method  to merge two Account records of Education and Entertainment industry
    @future
    public  static void display()
    {
        account a1= [select name,phone,industry,type,Rating
                    from account
                    where industry='Education' AND name='University of Arizona'];
        
         account a2= [select name,phone,industry,type,Rating
                    from account
                    where industry='Entertainment' AND name='Accenture'];
        
        merge a1 a2;
        
        account a3 =[select name,phone,industry,type,Rating
                    from account
                    where industry='Education' AND name='University of Arizona'];
        system.debug('Merged account:'+a3);
    }
 }

/*Day38H6.display();*/