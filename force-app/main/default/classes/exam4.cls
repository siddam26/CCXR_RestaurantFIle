public class exam4
{
    list<Contact> conrec=[select Email,Name,Title
                  from Contact where Email !=NULL limit 5];
    
    list<id> Toaddress=new list<id>();
    
    
    
    public exam4()
    { 
        for(contact c:conrec)
        {
            Toaddress.add(c.id);
        }
    }
    
    public void SendNewYearWishes()
    {
        emailtemplate et=[select id,name from emailtemplate where name='NewYearGreetings'];
         messaging.MassEmailMessage emailobj=new messaging.MassEmailMessage();
          emailobj.setTargetObjectIds(Toaddress);
          emailobj.setTemplateId(et.id);
        
        Messaging.sendEmailResult[] res = messaging.sendEmail(new messaging.MassEmailMessage[] {emailobj}); 
        
        for( Messaging.sendEmailResult r1:res)
        {
            if(!r1.Issuccess())
            {
                system.debug(r1.getErrors());
            }
            else
            {
                system.debug('Mail sent successfully');
            }
        }
        
    }

}
/*exam4 obj2 = new exam4();
obj2.SendNewYearWishes();*/