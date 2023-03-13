public class candcontroller {
    @AuraEnabled
    public static list<Candidate__c> candrec()
    {
        list<Candidate__c> candrec1 =[select Last_Name__c,Aadhar_number__c,B_Tech_Discipline__c,Status__c
                                        from Candidate__c
                                         ORDER BY Last_Name__c limit 10];
        return candrec1;
    }


}