//Dyanmic Apex
public class Day45C1 
{
    public void getDescription()
    {
        map<string,schema.SObjectType> schemaMap = schema.getGlobalDescribe();
        map<string,schema.SObjectField> fldmap = new map<string,schema.SObjectField>();
        string sobjectname='Account';
        string fieldname='Industry';
        schema.DescribeSObjectResult arbdsr = schemaMap.get(sobjectname).getDescribe();
        fldmap = arbdsr.fields.getMap();
        schema.DescribeFieldResult frbdsr = fldmap.get(fieldname).getDescribe();
        list<schema.PicklistEntry> picvalues = frbdsr.getpicklistvalues();
        system.debug(picvalues[0].getlabel()+' '+picvalues[0].getvalue());
        system.debug('object Description='+arbdsr);
        system.debug('object field description='+fldmap.keyset());
        system.debug('object field values='+fldmap.values());
        
    }

}

/*Day45C1 obj = new Day45C1();
obj.getDescription();*/