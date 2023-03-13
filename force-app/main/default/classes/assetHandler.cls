public class assetHandler 
{
     public static void populateOpportunityAndLineItems(list<asset> ast)
     {
       
			list<id> assetid = new list<id>();
		
			List<Opportunity> opportunityList = new List<Opportunity>();
			List<OpportunityLineItem> lineItemList = new List<OpportunityLineItem>();
            for(asset ast1 :ast)
            {
				if(ast1.AccountId != NULL)
                {
					
					Opportunity oppObj = new Opportunity(Name=ast1.Name+' Testing',StageName = 'Prospecting',CloseDate = date.today().addDays(20),amount=10,AccountId = ast1.AccountId);
					//oppObj.Name = ast1.Name+' Testing'; 
					//oppObj.StageName = 'Prospecting';
					//oppObj.CloseDate = date.today().addDays(20);
					//oppObj.AccountId = ast1.AccountId;
					insert oppObj;
					
				}
			}
            
			
			/*PriceBook2 pbookObj = new PriceBook2();
            pbookObj = [ SELECT Id FROM Pricebook2  LIMIT 1 ];
        	 Product2 proObj = new Product2();
			proObj = [ SELECT Id  FROM Product2 where Id =:pBookObj.Id LIMIT 1 ];
			if(opportunityList != NULL)
            {
				
				for(Opportunity oppObj :opportunityList )
                {
				
					OpportunityLineItem lineItemObj = new OpportunityLineItem();
					lineItemObj.Product2Id = proObj.ID; 
					lineItemObj.PricebookEntryId =pbookObj.Id;  
					lineItemObj.OpportunityId = oppObj.ID;   
					lineItemList.add(lineItemObj);
				
					}
					insert lineItemList;
				}*/
				
			
			
            
        }
       
        }