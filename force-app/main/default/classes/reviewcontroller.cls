public with sharing class reviewcontroller {
    public reviewcontroller() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Review__c> getreviews(){
       return [Select Name,Candidate__c,Job_Application__c,Rating__c
       from Review__c
       where Rating__c<3];
    }
    @AuraEnabled
    public static void deletereviews(List<Id> selreviewId){
        List<Review__c> revlist = new List<Review__c>();
        revlist = [Select id from Review__c where id in:selreviewId];
        if(revlist != null && revlist.size()>0){
            delete revlist;
        }
}
}