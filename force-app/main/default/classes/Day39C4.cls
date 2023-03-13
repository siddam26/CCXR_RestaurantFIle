public class Day39C4 {
    
    list<lead> lds =[select name,city,country,annualrevenue,region__c,Industry
                     from lead];
    public void display()
    {
        list<lead> updatedlds = new list<lead>();
        for(lead lds1:lds)
        {
            if(lds1.country == 'Honolulu')
            {
                lds1.annualrevenue=2000000;
                lds1.Industry='Education';
                lds1.region__c='USA';
                updatedlds.add(lds1);
                
            }
             else if(lds1.country == ' ')
            {
                lds1.Country='Greater England';
                lds1.annualrevenue=3000000;
                lds1.Industry='Engineering';
                lds1.region__c='UK';
                updatedlds.add(lds1);
                
            }
            else 
            {
                lds1.Country='Green Land';
                lds1.region__c='OTHERS';
                lds1.annualrevenue=4000000;
                lds1.Industry='Communications';
                updatedlds.add(lds1);
            }
            
        }
        update updatedlds;
    }

}