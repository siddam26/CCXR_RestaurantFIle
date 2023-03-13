public with sharing class candidatecontroller {
    public candidatecontroller() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Candidate__c> getCandidate(){
       return [Select id,Name,First_Name__c,Last_Name__c,SSN__c,Aadhar_number__c,Email__c,Phone__c
       from Candidate__c
       where Email__c=null OR Phone__c=null limit 20];
    }
    @AuraEnabled
    public static void deleteCandidates(List<Id> selCandidateId){
        List<Candidate__c> canList = new List<Candidate__c>();
        canList = [Select id from Candidate__c where id in:selCandidateId];
        if(canList != null && canList.size()>0){
            delete canList;
        }
}
}