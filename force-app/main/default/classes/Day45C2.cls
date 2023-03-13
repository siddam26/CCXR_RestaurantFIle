public class Day45C2
{
    public string fldlist;
    public string fldvalue;
    public string objname;
    public string fldname;
    public string operator;
    
    //dynamic SOQL
    public void dynamicSOSL(string fldlist,string fldvalue,string objname,string fldname,string operator)
    {
        this.fldlist = fldlist;
        this.fldvalue = fldvalue;
        this.objname = objname;
        this.fldname = fldname;
        this.operator = operator;
        
        /*Hard Coded SOSL
        list<account> a = [select name ,industry
                          from account where industry='Banking'];*/
        
        //dynamic SOSL
        list<sobject> sobjs = database.query('select '+fldlist+' from '+objname+' where '+fldname+operator+fldvalue);
        for(sobject s:sobjs)
        {
            system.debug(s);
            
        }
        
    }
    //SOSL
    public void dynamicSOSL(string s)
    {
        list<list<sobject>> sobjs = search.query(s);
        list<account> accs = sobjs[0];
        list<contact> con = sobjs[1];
        
        for(account a:accs)
        {
            system.debug(a);
        }
        for(contact c:con)
        {
            system.debug(c);
        }
    }
    
    //DML
    public void dynamicDML(sobject recordforopr,string fldtoupdate,string fldvalue,string dmlop)
    {
        if(dmlop=='update')
        {
         system.debug('before update::::::');
         system.debug(recordforopr);
         recordforopr.put(fldtoupdate,fldvalue);
         update recordforopr;
         system.debug('after update::::::');
         system.debug(recordforopr); 
        }
        if(dmlop=='delete')
        {
        system.debug('before delete::::::');
        system.debug(recordforopr);
        recordforopr.put(fldtoupdate,fldvalue);
        delete recordforopr;
       
        }
        
            
    }
    

}

/*Day45C2 obj = new Day45C2();
obj.dynamicSOSL('name,industry,AnnualRevenue','5000000','account','AnnualRevenue','>');
system.debug('SOSL::::');
obj.dynamicSOSL('find \'hyderabad\' in all fields returning account,contact');
system.debug('DML::::::');
account a=[select name,industry
          from account
          where industry='Banking' limit 1];
obj.dynamicDML(a,'industry','Education');*/