public class Day38C9 implements schedulable {
    public void execute(schedulablecontext sc)
    {
        list<Opportunity> opp1 = [select Name,StageName,CreatedById
                                 from Opportunity
                                 where StageName='Proposal/Price Quote' AND Createddate = LAST_N_DAYS:10];
        
        for(Opportunity task:opp1)
        {
            
            task t1 = new Task();
            t1.WhatId = task.id;
            t1.OwnerId = '0055g00000E53EgAAJ';
            t1.subject = 'Replacement';
            insert t1;

        }
    }

}