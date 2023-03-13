public class Day35H5 {
    
    
    //Write an Apex class using SOSL to search for 'Hyderabad' and display Contact,Account and Candidate records
    
    
    list<list<sobject>> s1=[find 'Hyderabad' in all fields returning
                            Contact(MailingAddress,OtherCity),
                            Account(BillingAddress,PersonMailingAddress),
                            Candidate__c(last_Name__c,City__c)];
    
    list<Contact> cont = new list<Contact>();
    list<Account> acc = new list<Account>();
    list<Candidate__c> c1 = new list<Candidate__c>();
    
    public void displayContactAccountCandidateResult()
    {
        cont=s1[0];
        acc=s1[1];
        c1=s1[2];
        
        
        system.debug('Contact records with Hyderabad :::');
        for(Contact cont1:cont)
        {
            system.debug(cont1);
        }
        system.debug('Account records with Hyderabad:::');
        for(Account a:acc)
        {
            system.debug(a);
        }
        system.debug('Candidate records with Hyderabad:::');
        for(Candidate__c c2:c1)
        {
            system.debug(c1);
        }
    }
}

/*Day35H5 obj =new Day35H5();
obj.displayContactAccountCandidateResult();*/