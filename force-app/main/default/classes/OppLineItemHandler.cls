public class OppLineItemHandler 
{
     public static void creatingAssest(list<opportunitylineitem> oplts)
    {
        list<id> opltsid = new list<id>();
        for(opportunitylineitem oplts1:oplts)
        {
            opltsid.add(oplts1.opportunityid);
        }
        list<id> accid = new list<id>();
        opportunity opps=[select AccountId,name,
                          account.Name
                           from opportunity
                           where id in:opltsid];
    
            accid.add(opps.AccountId);
        
        contact con = [select Id
                            from contact
                            where AccountId in:accid limit 1];
        OpportunityLineItem oplts2 = [select Quantity,UnitPrice,
                                           PricebookEntry.Product2Id
                                          from OpportunityLineItem
                                          where opportunityId in:opltsid];
        asset a=new asset();
        a.Name = opps.account.Name+' testassest';
        a.AccountId = opps.AccountId;
        a.ContactId = con.Id;
        a.Price=oplts2.UnitPrice;
        a.Quantity= oplts2.Quantity;
        a.Product2Id = oplts2.PricebookEntry.Product2Id;
        insert a;
        
    }//add a product to opportunity to product then an asset is created
  
    //Once an Opportunity line item  is inserted it will create insert a quotation also
    public static void creatingquotationWhenOpportunityLineItemIsInserted(list<opportunitylineitem> olt)
    {
        list<id> oppid = new list<id>();
        for(opportunitylineitem olt1:olt)
        {
            oppid.add(olt1.opportunityid);
        }
        Opportunity oppList =[Select Id,Name,Account.Name 
                                    from Opportunity 
                                    where Id in:oppId];

            quote newquote = new quote();
            newquote.OpportunityId = oppList.Id;
            newquote.Name=oppList.Account.Name+' TestQuote';
            insert newquote;
    }
    
    //Write a trigger on Opportunity line item when a line item deletes delete an opportuntiy as well
    public static void deletingOpportunityWhenopportunityLineitemIsDeleted(list<opportunitylineitem> oltd)
    {
        list<id> oltid = new list<id>();
        for(opportunitylineitem oltd1:oltd)
        {
            oltid.add(oltd1.opportunityid);
        }
        
          List<Opportunity> oppList=[Select Id 
                                     from Opportunity 
                                     where Id in:oltid];

              delete oppList;
          
    }
    //Once an opportunity line item will create update Opportunity's Account with the total number of Product Quantities.
    //Create a field first on Account "Total sales quantities"
    public  static void updatingTotalSaleQuantityWhenOppIsInserted(list<OpportunityLineItem> olt)
    {
        list<id> oppids=new list<id>();
        list<id> accids=new list<id>();
        decimal opps=0;
     
    for(OpportunityLineItem olt1:olt)
    {
        oppids.add(olt1.OpportunityId);
        opps=opps+olt1.Quantity;
    }
     Opportunity opp=[select name,Account.id 
                      from Opportunity 
                      where id in:oppids];
     accids.add(opp.Account.id);
     account acc=[select name,TotalSales__c from 
                  account 
                  where id in:accids];
     acc.TotalSales__c = acc.TotalSales__c + opps;
     update acc;
   
    }
    /*Once Opportunity Line Line Item is added to Opportunity with the specified product,Then Product Total Quantities must be 
       deduct from the Product Object
      e.g. If we have Total Quantity 100 on Product object and we have added 50 in line items , then product must be update 100-50 = 50
	  Create Total Quantity, Available Quantity Fields on Product2 object*/
    public static void updatingProductQunatity(list<OpportunityLineItem> newoplt)
    {
        decimal quantity=0;
        list<id> productid =new list<id>();
        for(OpportunityLineItem newoplt1:newoplt)
        {
            productid.add(newoplt1.product2id);
            quantity= quantity+newoplt1.quantity;
        }
         newoplt=[select Product2Id,Quantity from 
                  OpportunityLineItem 
                  where Product2Id in :productid];
        
        List<Product2> prodListToUpdate = new List<Product2>();
        List<Product2> prodList=[Select Id,Available_Quantity__c,Total_Quantity__c 
                                from Product2 
                                where Id in:productid];
        for(product2 prodlist1:prodList)
        {
            prodList1.Available_Quantity__c = prodList1.Total_Quantity__c -quantity;
            prodListToUpdate.add(prodlist1); 
            
        
        }
        update prodListToUpdate;
    }
    //When an opportunity line item create an email should go to Opportunity Account client contact
    public static void sendemail(list<OpportunityLineItem> olt)
    {
        list<id> accid = new list<id>();
        list<id> oppid = new list<id>();
        list<contact> cont = new list<contact>();
        for(OpportunityLineItem olt1:olt)
        {
            accid.add(olt1.Opportunity.accountid);
            oppid.add(olt1.OpportunityId);
        }
        list<id> conid = new list<id>();
        cont =[select Lastname,email 
              from Contact 
              where Accountid in:accid];
        for(contact con1:cont)
        {
            conid.add(con1.id);
        }
        emailtemplate et=[select id,name from emailtemplate where name='sending email to contatc email'];
        messaging.MassEmailMessage  emailobj=new messaging.MassEmailMessage ();
        emailobj.setTargetObjectIds(conid);
        emailobj.setTemplateId(et.id);
        messaging.sendEmail(new messaging.MassEmailMessage[] {emailobj});
        
    }
        /*Write a trigger on Opportunity line item , Add two picklist values in Product Family field
	 Electronic and Books And a picklist Product type on Opportunity with same picklist values
	 Now once you add a line item into Opportunity, check if Opportunity Product Type is same as opli Product Family 
	 let it be insert or add error The Product family does not match.*/
    public static void generatingErrorWhenProducttypeIsdifferent(list<OpportunityLineItem> olt) 
    {
        list<id> pids=new list<id>();
        list<id> oppid=new list<id>();
        for(OpportunityLineItem olt2:olt)
        {
            pids.add(olt2.Product2Id);
            oppid.add(olt2.OpportunityId);
            
        }
        Product2 op1=[select name,Type,Family 
                      from Product2 
                      where id in:pids];
        
        Opportunity opp=[select name,Product_type__c 
                         from Opportunity 
                         where id in:oppid];
        
        for(OpportunityLineItem olt1:olt)
        {
            
            if(opp.Product_type__c!=op1.Family)
            {
                olt1.adderror('product type does not match');
            }
                    
                
        }
    }

}