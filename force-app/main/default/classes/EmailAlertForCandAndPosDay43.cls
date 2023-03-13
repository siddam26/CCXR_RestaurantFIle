public class EmailAlertForCandAndPosDay43 {
    public static void EmailsAlert(list<Job_Application__c> japs)
    {
        list<id> jids=new list<id>();
        for(Job_Application__c ja:japs){
            jids.add(ja.id);
        }
        list<Job_Application__c> japs2 =[select name,status__c,Candidate__r.Email__c,Position__r.owner.email
                                         from Job_Application__c 
                                         where Status__c ='Schedule For Interview' AND Candidate__r.Email__c!=NULL AND Id  in:jids ];
        list<string> shortlistedEmail =new list<string>();
        
        for(Job_Application__c jap1:japs2)
        {
                  shortlistedEmail.add(jap1.Candidate__r.Email__c);
                  shortlistedEmail.add(jap1.Position__r.owner.email);
        }
            messaging.SingleEmailMessage emails = new messaging.SingleEmailMessage();
            emails.setToAddresses(shortlistedEmail);
            emails.setSubject('your appliation has been scheduled for interview');
            emails.setPlainTextBody('You had been shortlisted for interview ,kinldy attend the interview on 13-11-2022');
            messaging.sendEmail(new messaging.SingleEmailMessage[]{emails});
        }
    }