public class Day39C7 {
    public void updatelead()
    {
        integer noofbatches=0;
        integer noofrecords=0;
        for(list<lead> lds:[select name,city,country,annualrevenue,region__c from lead])
        {
            for(lead l:lds)
            {
                noofrecords++;
            }
            noofbatches++;
        }
        System.debug('noofbatches='+noofbatches);
        System.debug('noofrecords='+noofrecords);
    }
}

/*Day39C7 obj = new Day39C7();
obj.updatelead();*/