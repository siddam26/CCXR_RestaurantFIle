@istest
private class Candidate_test 
{
    @istest
    private static void contactinsert()
    {
        list<candidate__c> cand5 = new list<candidate__c>();
        for(integer i=0;i<3;i++)
        {
         candidate__c cand3 = new candidate__c();
        cand3.Last_Name__c = 'Test Candidate'+i;
        cand3.Email__c = '123@gmail.com';
        cand3.Phone__c = '235648';
        cand3.B_Tech_Discipline__c='IT';
            cand5.add(cand3);
        }
        
        insert cand5;
       
        list<contact> con = [select LastName from contact where LastName like'Test Candidate%'];
        integer x = con.size();
        System.assertEquals(3,x);
        
        
    }

}