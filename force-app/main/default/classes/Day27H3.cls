public class Day27H3 {
    public map<string,Position__c> p1 = new map<string,Position__c>();
    public map<string,Position__c> p2 = new map<string,Position__c>();
    public map<string,Position__c> p3 =new map<string,Position__c>();
    
    public void Positions()
    {
        Position__c a1=new Position__c(name='New position1',Functional_Area__c='Information Technology',Min_Pay__c=30000,Max_Pay__c=35000);
       	Position__c a2=new Position__c(name='New position2',Functional_Area__c='Ware Housing',Min_Pay__c=20000,Max_Pay__c=35000);
        Position__c a3=new Position__c(name='New position3',Functional_Area__c='Miscellaneous',Min_Pay__c=20000,Max_Pay__c=30000);
        
        p1.put('Functional_Area__c',a1);
        p2.put('Functional_Area__c',a2);
        p3.put('Functional_Area__c',a3);
        
        system.debug('position p1='+p1);
        system.debug('position p2='+p2);
        system.debug('position p3='+p3);
        
       
    }

}