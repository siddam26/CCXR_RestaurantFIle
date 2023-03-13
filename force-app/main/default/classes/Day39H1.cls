//Write a batch Apex to update position min pay by 10% if min pay<50000
//for updating min pay records see day39h
public class Day39H1 implements Database.Batchable<sObject>
{
    public final string query ='Select Name,Min_Pay__c from Position__c';
    
    public DataBAse.QueryLocator start(DataBase.BatchableContext bc)
    {
        return Database.getQueryLocator(query);
    }
    
    public void execute(DataBase.BatchableContext bc , list<Position__c> pos)
    {
        list<Position__c> updatepos=new list<Position__c>();
        
        for(Position__c p:pos)
        {
            if(p.Min_Pay__c<50000)
            {
                p.Min_Pay__c+=(p.Min_Pay__c)*0.1;
                updatepos.add(p);
            }
            else
            {
                p.Min_Pay__c=p.Min_Pay__c;
                updatepos.add(p);
            }
        }
        update updatepos;
    }
    
    public void finish(DataBase.BatchableContext bc)
    {
        system.debug('Updation of Min Pay has Done');
    }
}

/*Day39H1 obj=new Day39H1();
id batchprocessid=database.executeBatch(obj);
AsyncApexJob aaj = [SELECT Id, Status, NumberOfErrors
                    FROM AsyncApexJob WHERE ID =: batchprocessid ];
system.debug(aaj);*/