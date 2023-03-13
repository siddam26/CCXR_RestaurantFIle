trigger CandidateTriger on Candidate__c (after insert) 
{
    CandidateHandler.creatingcontact(trigger.new);

}