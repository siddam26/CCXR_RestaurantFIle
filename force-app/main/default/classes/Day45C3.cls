public class Day45C3 {
    
    public void discount()
    {
        list<CountryPhoneCode__c> custset = new list<CountryPhoneCode__c>();
        custset = CountryPhoneCode__c.getAll().values();
        system.debug(custset);
        
        CountryPhoneCode__c c1 = CountryPhoneCode__c.getinstance('US');
        system.debug(c1);
    }
    
}