//sending email through apex
public class Day40C3 {
    
    public void sendEmail()
    {
        list<string> toaddress = new list<string>{'siddam26.ss@gmail.com'};
        list<string> ccaddress = new list<string>{'pranaynau2209@gmail.com'};
        messaging.SingleEmailMessage emailobj = new messaging.SingleEmailMessage();
        emailobj.setToAddresses(toaddress);
        emailobj.setCcAddresses(ccaddress);
        emailobj.setSubject('Email using apex class');
        emailobj.setPlainTextBody('Hi welcome to Email world');
        messaging.sendEmail(new messaging.SingleEmailMessage[]{emailobj});
        
    }

}


/*Day40C3 obj = new Day40C3();
obj.sendEmail();*/