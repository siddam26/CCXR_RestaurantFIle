public class Day28H3 {
    
    integer n;
    integer range;
    public void table(integer n ,integer range)
    {
         for (integer i = 0; i <= range; i++)
         System.debug(n + '*' + i + '='  + n * i);
    }

}