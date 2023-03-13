public class poscontroller 
{
     @AuraEnabled
    public static list<Position__c> posrec()
    {
        list<Position__c> posrec1 =[select Name, Functional_Area__c,Position_Age__c,Min_Pay__c,Location__c,Days__c
                                        from Position__c
                                         limit 20];
        return posrec1;
    }

}