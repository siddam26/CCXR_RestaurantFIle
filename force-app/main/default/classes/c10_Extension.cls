public class c10_Extension
{
	String SearchString;
    List<Lead> lds;
        public String getSearchString ()
    {
        return SearchString;
    }
    public void setSearchString(String s)
    {
        SearchString = s;
    }
    public List<Lead> getlds()
    {
        return lds;
    }
    public pageReference doSearch()
    {
        lds = (list<lead>)[FIND :SearchString in all fields returning lead(firstname,email,phone)][0];
       return null;
    }
}