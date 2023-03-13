/*Controller2 to display two types of records with page block command buttons*/
public class Controller2 
{
    list<account> acts=new list<account>();
    public list<account> getacts()
    {
        return acts;
     }
    public pageReference directacts()
    {
        acts=[select name,type,industry from account where type='Customer - Direct'];
        return null;
    }
    public pageReference channelacts()
    {
        acts=[select name,type,industry from account where type='Customer - Channel'];
        return null;
    }
}
//vf controler2