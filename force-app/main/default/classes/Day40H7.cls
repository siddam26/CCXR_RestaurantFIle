public class Day40H7
{
    public user u;
    list<string> Toaddress=new list<string>();
  
    
    public void SendEmail()
    {
        u = [select Name ,Email from user where name='b3ssrecruiter'];
        Toaddress.add(u.Email);
        document doc=[select id ,name from document where name ='Recruiter Logo'];
        Messaging.SingleEmailMessage emailobj=new messaging.SingleEmailMessage();
        emailobj.setEntityAttachments(new id[] {doc.id});
        emailobj.setSubject('New image');
        emailobj.setToAddresses(Toaddress);
        emailobj.setHtmlBody('Hi,<br>image has been attached.<br>please open and verify');
        Messaging.sendEmailResult[] res = messaging.sendEmail(new messaging.SingleEmailMessage[] {emailobj}); 
        
        for( Messaging.sendEmailResult r1:res)
        {
            if(!r1.Issuccess())
            {
                system.debug(r1.getErrors());
            }
            else
            {
                system.debug('Image sent successfully');
            }
        }
    }
}

/*Day40H7 obj =new Day40H7();
obj.SendEmail();*/