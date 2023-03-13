public class Day34C9 {
    
    Opportunity o1 =[select Name, AccountId,StageName,
                     (select Name,Quantity,	TotalPrice from OpportunityLineItems )
                     from Opportunity where Name='laptop' ];
    
       public void readingListOfProductsAdded()
       {
           list<OpportunityLineItem> lt =o1.OpportunityLineItems;
           system.debug('opportunity name:'+o1.name);
           system.debug('opportunity id:'+o1.AccountId);
           for(OpportunityLineItem lt1:lt)
           {
               system.debug('Products are:'+lt1);
           }
           }
}

/*Day34C9 obj2 = new Day34C9();
obj2.readingListOfProductsAdded();*/