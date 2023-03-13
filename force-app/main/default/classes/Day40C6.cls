//using mass meail to send mass emails
public class Day40C6 {
    public list<lead> lds = [select name,email 
                             from lead order by name limit 3 ];
    list<id> lids = new list<id>();
    public day40C6()//you wil get the data when class isn loaded
    {
        for(lead l:lds)
        {
            lids.add(l.id);
        }
    }
    public void sendMail()
    {
        EmailTemplate et =[select id,name 
                           from EmailTemplate
                          where name='EmailTemplateForMassEmail'];
        messaging.MassEmailMessage massEmailMessage = new messaging.MassEmailMessage();
        massEmailMessage.setTargetObjectIds(lids);
        massEmailMessage.setTemplateId(et.id);
        messaging.sendEmail(new messaging.MassEmailMessage[]{massEmailMessage});
        
    }

}

/*Day40C6 obj =new Day40C6();
obj.sendMail();*/