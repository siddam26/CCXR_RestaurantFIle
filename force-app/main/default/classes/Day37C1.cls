public class Day37C1 {
    
    public void dispalyingqueryLimitError()
    {
        for( integer i=0;i<=149;i++)
        {
            Lead c1= new Lead( LastName='Limit error'+i,Company='Tcs');
            insert c1;
        }
    }

}