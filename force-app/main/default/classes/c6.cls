Public class c6
{
    List<opportunity>ops;
    Public list<opportunity> getops()
    {
        Return ops;
    }
    Public pageReference openops()
    {
        Ops=[select name,stagename,amount,closedate from opportunity where stagename in('prospecting','value proposition')];
        Return null;
    }
    Public pageReference closedops()
    {
        Ops=[select name,stagename,amount,closedate from opportunity where stagename in('Closed Won','Closed  Lost')];
        Return null;
    }
}