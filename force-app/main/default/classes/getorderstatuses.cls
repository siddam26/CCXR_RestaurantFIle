public class getorderstatuses {
  
  
    @AuraEnabled(cacheable=true)
    public static list<CCXR_Order_Line_Item__c> orderstatuses(Id orderid)
    {
              integer i=0;
       integer j=0;
         list<CCXR_Order_Line_Item__c> n1=new  list<CCXR_Order_Line_Item__c> ();
        list<CCXR_Order_Line_Item__c>                            
        
            orderst=[select CCXR_OrderLineItem_Status__c,CCXR_Order_ID__r.CCXR_Order_Status__c,
                                           CCXR_Order_ID__r.CCXR_Customer__c, CCXR_Order_ID__r.CCXR_Table__c,CCXR_Order_ID__r.Name,
                                           CCXR_Order_ID__r.CCXR_Grand_Total__c,CCXR_Order_ID__r.CCXR_Tax__c,CCXR_Order_ID__r.CCXR_Discount__c,
                                           CCXR_Order_ID__r.CCXR_Net_Total__c,
                                     Name,CCXR_Item_Name__c,CCXR_Quantity__c,CCXR_Price__c,CCXR_Total__c
                                             from CCXR_Order_Line_Item__c
                                   where  
                                   CCXR_Order_ID__r.CCXR_Order_Status__c ='Completed' AND CCXR_Order_ID__C=:orderid
                                        ];
            for(CCXR_Order_Line_Item__c oli:orderst)
            {
                i++;
                if(oli.CCXR_OrderLineItem_Status__c=='Served')
                {
                    j++;
                }
                

                                 

      if(i==j)
      {         
                      
      n1.add(oli);          
        
        
          } }
       
        return n1;
       
    }
    
    }