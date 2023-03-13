//String Based SOQL
public class Day33C1 {
    string fldlist;
    string objname;
    list<sobject> sobj1 = new list<sobject>();
    list<sobject> sobj2 =new list<sobject>();
    
    public void execDatabaseQuery(string fldlist,string objname)
    {
        this.fldlist=fldlist;
        this.objname=objname;
        sobj1 = database.query('select name from lead where industry=\'Education\'');
        sobj2 = database.query(' select '+ fldlist +' from ' + objname);
        system.debug(sobj1);
        system.debug(sobj2);
        system.debug(sobj2.size());
        for(sobject a:sobj2)
        {
            system.debug(a);
        }
        
    }

}

/*Day33C1 obj2 = new Day33C1();
obj2.execDatabaseQuery('Industry','Account');*/