public with sharing class day72H1controller {
    public day72H1controller() {

    }
    @AuraEnabled(cacheable=true)
    public static list<position__c> getPositions(){
        list<Position__c> pos=[Select id, Name,Functional_Area__c,Location__c
                            from Position__c
                            WITH SECURITY_ENFORCED 
                            Limit 15];
        return pos;
}
}