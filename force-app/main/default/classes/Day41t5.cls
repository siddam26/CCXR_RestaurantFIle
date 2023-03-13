public class Day41t5 {
    //Write an Apex class to Send an email to Owner when an Position is  with status 'Closed Not Approved'
 
    public  void email_send()
    {
        list<string> toaddress = new list<string>();
        list<position__c> pos1=[select Name,Status__c,Functional_Area__c,Owner.email 
                                from position__c 
                                where Status__c='Closed-Not Approved' AND Owner.email !=NULL limit 2 ];
        
        for(Position__c pos2:pos1)
        {
           
                toaddress.add(pos2.Owner.Email);
               
        }
              system.debug('address are'+toaddress);
              Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                email.setToAddresses(toaddress);
                email.setSubject('regarding postion status');
                email.setPlainTextBody('A position with status closed not approved is created ');
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
            
        
        
    }
}