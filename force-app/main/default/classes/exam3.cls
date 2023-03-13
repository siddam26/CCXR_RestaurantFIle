public class exam3 
{
    list<Employement_Website_Name__c> emprec=[select Name,Maximum_Budget__c,Website__c,
                                       (select Name,  Position__c from Job_Postings__r)
                                       from Employement_Website_Name__c];
  
    public void DisplayEmpRec()
    {
       
        for(Employement_Website_Name__c emprec1:emprec)
        {
            system.debug('employement Webiste Name='+emprec1.Name);
            system.debug('Maximum Budget='+emprec1.Maximum_Budget__c);
            system.debug('website='+emprec1.Website__c);
            list<Job_Posting__c> jprec=emprec1.Job_Postings__r;
            for(Job_Posting__c jprec1:jprec)
            {
                system.debug('Job posting name='+jprec1.Name);
                system.debug('Position='+jprec1.Position__c);
            }
            
        }
    }
    

}
/*exam3 obj1 = new exam3();
obj1.DisplayEmpRec();*/