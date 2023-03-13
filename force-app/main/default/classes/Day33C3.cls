//AGGREATE FUNCTION	
public class Day33C3 {
    AggregateResult aggrResult1=[select count(Min_Pay__c),sum(Min_Pay__c),max(Min_Pay__c),min(Min_Pay__c),avg(Min_Pay__c)
                                from Position__c];
    
     AggregateResult aggrResult2=[select count(Min_Pay__c)CountofMinPay,
                                  sum(Min_Pay__c)TotalMinPay,
                                  max(Min_Pay__c)MaximumMaxPay,
                                  min(Min_Pay__c)MinimumMinPay,
                                  avg(Min_Pay__c)AverageMinPay,
                                  count_Distinct(Min_Pay__c)DistinctCount
                                   from Position__c];
    
    public void readAggreateResult()
    {
        system.debug('Aggretae Result using expr::::');
        system.debug('no.of records in position obj='+aggrResult1.get('expr0'));
        system.debug('sum of min pay in position obj='+aggrResult1.get('expr1'));
        system.debug('max of min pay in position obj='+aggrResult1.get('expr2'));
        system.debug('min of min pay in position obj='+aggrResult1.get('expr3'));
        system.debug('Avg of min pay in position obj='+aggrResult1.get('expr4'));
        
        
        
        system.debug('Aggregate result using alias name::::::');
        decimal c=(decimal) aggrResult2.get('CountofMinPay');
        decimal t=(decimal) aggrResult2.get('TotalMinPay');
        decimal mx=(decimal) aggrResult2.get('MaximumMaxPay');
        decimal mn=(decimal) aggrResult2.get('MinimumMinPay');
        decimal avg=(decimal) aggrResult2.get('AverageMinPay');
        decimal dc=(decimal) aggrResult2.get('DistinctCount');
        
        
        system.debug('No of records in position object:'+c);
        system.debug('sum of min pay in position obj:'+t);
        system.debug('max of min pay in position obj='+mx);
        system.debug('min of min pay in position obj='+mn);
        system.debug('Avg of min pay in position obj='+avg);
        system.debug('no.of distinct min pay records in position obj='+dc);
 
     }

}

/*Day33C3 obj =new Day33C3();
obj.readAggreateResult();*/