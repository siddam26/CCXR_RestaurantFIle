public class EmpwebsiteHandler 
{
    public static void calculatingTax(list<Employement_Website_Name__c> emp)
    {
        for(Employement_Website_Name__c emp1:emp)
        {
            if(emp1.Maximum_Budget__c < 3000000)
            {
                if(emp1.Maximum_Budget__c < 200000)
                {
                    emp1.Tax__c=0.05; 
                }
                emp1.Tax__c=0.25;
            }
            else
            {
                emp1.Tax__c=0.1;
            }
            
        }
    }

}