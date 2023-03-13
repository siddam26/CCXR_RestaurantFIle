trigger opplineitem on Opportunity (after insert) 
{
    /*

    Pricebook2 prib=[select name,id from Pricebook2 where id='01s5g00000SDpeAAAT'];
    Product2 prod=[select name, id from Product2 where id='01t5g0000075loXAAQ'];
    PricebookEntry pribe=[select id from PricebookEntry where Product2.name='Iphone14' limit 1 ];
    for(Opportunity o:trigger.new )
    {
    OpportunityLineItem oli=new OpportunityLineItem(PricebookEntryid=pribe.id,OpportunityId=o.id,quantity=5,totalprice=50000);
    insert oli;

    }
*/
}