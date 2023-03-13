//capturing if there are any errors in email
public class Day40C5 {
     public void sendEmail()
    {
        list<string> toaddress = new list<string>{'siddam26.ss@gmail.com'};
        list<string> ccaddress = new list<string>{'pranaynau2209@gmail.com'};
        messaging.SingleEmailMessage emailobj = new messaging.SingleEmailMessage();
        emailobj.setToAddresses(toaddress);
        emailobj.setCcAddresses(ccaddress);
        emailobj.setSubject('Email using apex class');
        emailobj.setHtmlBody('<h1>Hi,</h1><br>hope you are doing well<br>please attend client meeting on <b>28-10-2022</b>');
        messaging.SendEmailResult[] res = messaging.sendEmail(new messaging.SingleEmailMessage[]{emailobj});
        for(messaging.SendEmailResult r:res)
        {
            if(!r.issuccess())
            {
                system.debug(r.getErrors());
            }
            else
                system.debug('email sent successfully');
        }
    }

}