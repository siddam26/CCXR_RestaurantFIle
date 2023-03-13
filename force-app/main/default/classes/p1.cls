public class p1 
{
    //Write an Apex class to display the Position Name,Location and  Min Pay  Positions from
    // 'Ware housing'   for JOb Postings with  Employment web site as 'Naukri
    public void display()
    {
        list<Job_Posting__c> jp1 = [select Employement_Website_Name__c,Employement_Website_Name__r.name,
                                    Position__r.Functional_Area__c,Position__r.Name,Position__r.Min_Pay__c,Position__r.Location__c                                    
                                   from Job_Posting__c 
                                    where Employement_Website_Name__r.name='Naukri' AND Position__r.Functional_Area__c='Ware Housing'];
        for(Job_Posting__c jp2:jp1)
        {
            system.debug('websitename:'+jp2.Employement_Website_Name__r.name);
            system.debug('Functional area:'+jp2.Position__r.Functional_Area__c);
            system.debug('Position name:'+jp2.Position__r.Name);
            system.debug('Position location:'+jp2.Position__r.Location__c);
            system.debug('Position Min pay:'+jp2.Position__r.Min_Pay__c);
        }

    }
    
   
}
/*Day41t4 obj = new Day41t4();
obj.display();
SELECT Id, Name, parentRoleId FROM UserRole where Name='CEO'
*/

                              
                              /*where Employement_Website_Name__r.name='Naukri')
                            from position__c where Functional_Area__c='Ware Housing'*/