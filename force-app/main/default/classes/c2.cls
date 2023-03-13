Public class c2
{
    Account a=new Account(name='Abc Ltd',industry='Education',phone='132456');
    Account b=[select name,industry,phone from account where name ='Burlington Textiles Corp of America'];
    Public account getnewrec()
    {
        Return a;
    }
    Public account getexistingrec()
    {
        Return b;
    }
}
//vf c2