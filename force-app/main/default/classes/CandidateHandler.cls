public class CandidateHandler 
{
    public static void creatingcontact(list<candidate__c> cand )
    {
        list<contact> newcon = new list<contact>();
        for(candidate__c cand1:cand)
        {
            contact c = new contact();
            c.LastName = cand1.Last_Name__c;
            c.Email = cand1.Email__c;
            c.Phone = cand1.Phone__c;
            newcon.add(c);
        }
        insert newcon;
    }

}