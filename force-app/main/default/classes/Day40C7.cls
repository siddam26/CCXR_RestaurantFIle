public class Day40C7 {
    
    public Account acc;
    public Day40C7()
    {
        acc=[select id,name from Account where name='Acctest1'];
    }
    public pagereference show()
    {
        messaging.SingleEmailMessage mymail = new messaging.SingleEmailMessage();
        messaging.EmailFileAttachment fmail = new messaging.EmailFileAttachment();
        pagereference pdf=page.MyAccount;//visualforce page
        pdf.getParameters().put('Id',(string)acc.id);//account id
        pdf.setRedirect(true);
        blob b =pdf.getContent();
        fmail.setFileName('MyAccount.pdf');
        fmail.setBody(b);
        mymail.setSubject('Account details');
        string[] toadd = new string[]{'siddam26.ss@gmail.com'};
            mymail.setToAddresses(toadd);
        mymail.setPlainTextBody('please find the attachment');
        mymail.setFileAttachments(new messaging.EmailFileAttachment[]{fmail});
        messaging.sendEmail(new messaging.Email[]{mymail});
        
        return null;
    }

}