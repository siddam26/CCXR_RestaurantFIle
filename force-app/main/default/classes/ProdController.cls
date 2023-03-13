public  class ProdController {
    public ProdController() {

    }
    @AuraEnabled
    public static list<Product2> productSearch(string familys) 
    {
        list<Product2> prod=[SELECT Name,Family,Total_Quantity__c from Product2
         WHERE Family !=null AND  Family=:familys  ];
         return prod;
    }
}