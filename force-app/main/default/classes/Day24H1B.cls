public class Day24H1B {
     Date dateOfBirth = Date.newInstance(1999, 03,26);
         Date todaysDate = system.today();
        
    public void age(){
         
         System.debug('Date Of Birth = '+ dateOfBirth);
         System.debug('Today Date = '+ todaysDate);
         Integer totalDays = dateOfBirth.daysBetween(todaysDate) ;
         System.debug('Days = '+totalDays);
          Integer totalage = totalDays/365 ;
         System.debug('Your Age is = '+totalage);
    }

}