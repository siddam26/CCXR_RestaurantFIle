public class Day40H6 {
    public list<contact> con=[select MailingCity,lastname,email 
                              from contact 
                              where MailingCity='hyderabad'];
    list<id> cid=new list<id>();
    public Day40H6()
    { 
        for(contact c:con)
        {
            cid.add(c.id);
        }
    }
    public void sendEmail()
    {
        emailtemplate et=[select id,name from emailtemplate where name='attend Inaugural function'];
        messaging.MassEmailMessage emailobj=new messaging.MassEmailMessage();
        emailobj.setTargetObjectIds(cid);
        emailobj.setTemplateId(et.id);
        messaging.sendEmail(new messaging.MassEmailMessage[] {emailobj});
    }
}

/*Day40H6 obj = new Day40H6();
obj.sendEmail();*/