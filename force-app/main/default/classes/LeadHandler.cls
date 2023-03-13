//sending emails to lead email
public class LeadHandler
{
    public static void sendingEmail(list<lead> lds)
    {
        list<string> lds2 = new list<string>();
        for(lead lds1:lds)
        {
            lds2.add(lds1.Email);
        }
       
        document doc=[select id ,name from document where name ='Trigger Test1'];
        Messaging.SingleEmailMessage emailobj=new messaging.SingleEmailMessage();
        emailobj.setEntityAttachments(new id[] {doc.id});
        emailobj.setToAddresses(lds2);
        emailobj.setSubject('Welcome');
        emailobj.setHtmlBody('Please find the attached <b>PDF</b>');
        Messaging.sendEmailResult[] res = messaging.sendEmail(new messaging.SingleEmailMessage[] {emailobj}); 
        
            
    }
    //Trigger to prevent the user from creating a lead that already exist as contact
    public static void checkingLastNameOfLeadAndContact(list<lead> lds)
    {
        list<contact> con= [select lastname from contact];
        for(lead lds1:lds)
        {
            for(contact c1:con)
            {
                if(c1.lastname == lds1.LastName)
                {
                    lds1.LastName.adderror('you cant create the contact with the existing name');
                }
            }
        }
    }
    
    //
    public static void leadduplicates(list<lead> lds)
    {
        list<lead>ldsdup=new list<lead>();
        if(leadRecursioncls.b==true)
        {
            for(lead l:lds)
            {
             leadRecursioncls.b=false;
              lead l2=new lead(lastname=l.lastname+'d',company=l.Company);
              ldsdup.add(l2);
                         
        }
        insert ldsdup;
    }
    }

}