public class Day28H4 {
    integer i;
    
    public void displayOddNumbers(integer n)
    {
        system.debug('odd numbers from 1 to'+n +'are:');
        for(integer i=0;i<=n;i++)
        {
            if(math.mod(i, 2)!=0)
            {
                system.debug(i);
            }
        }
    }
}