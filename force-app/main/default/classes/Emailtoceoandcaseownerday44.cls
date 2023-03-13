public class Emailtoceoandcaseownerday44 {
    
    
    public static void email(list<Case> cases)
    {
        list<string> toaddresses = new list<string>();
        list<id> csids=new list<id>();
        for(case c:cases){
            csids.add(c.id);
        }
  
        list<case> updatedCases=[select casenumber,owner.email,status from case where id =:csids and status='Escalated' ];
        user u=[ select id,UserRole.Name,email
                from user 
                where  UserRole.Name='CEO'];
        toaddresses.add(u.email);
        for(case cs:updatedCases)
        {
           
                toaddresses.add(cs.owner.email);
        }
        
        
        messaging.SingleEmailMessage emails = new messaging.SingleEmailMessage();
        emails.setToAddresses(toaddresses);
        emails.setSubject('A Case has been Escalated!!!!!');
        emails.setPlainTextBody('This is to notify you that a case has been escalated');
        messaging.sendEmail(new messaging.SingleEmailMessage[]{emails});
        
    }
    
}