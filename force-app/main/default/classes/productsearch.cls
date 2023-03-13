public with sharing class productsearch {
    public productsearch() {

    }
    @AuraEnabled
    public static list<CCX_Product__c> productSearchs(string cat)
    {
        CCX__c category=[SELECT CID__c,Name,
        (SELECT Product_Name__c,CurrentQuantity__c from CCX_products__r)
        from CCX__c WHERE Name=:cat ] ;
        list<CCX_Product__c> products=category.CCX_Products__r;
    return products;
    }
}