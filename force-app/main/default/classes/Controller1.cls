public class Controller1
{
     public list<account> a1=[select name,industry,phone from account where type='Customer - Direct'];
    public list<account> a2=[select name,industry,phone from account where type='Customer - Channel'];
    public list<account> getdirrec()
    {
        return a1;
    }
        public list<account> getcharec()
    {
        return a2;
    }

}