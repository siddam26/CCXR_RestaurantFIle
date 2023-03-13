public class Day24H1 {
      
     
  public  void salaryOfEmployee(string name, integer actualsalary ,integer noofdaysabsent)
    {
        Date LastMonth = date.today().addmonths(-1);
        integer noofworkingdays=LastMonth.daysBetween(system.today());
        
        system.debug('lastmonth:' +LastMonth);
        system.debug('no of working days:'+noofworkingdays);
        System.debug('actualsalary='+actualsalary);
        
        system.debug('Employee Name=' +name);
        decimal salaryperday=actualsalary / noofworkingdays ;
        System.debug('salary per day='+salaryperday);
        Integer DaysPresent=noofworkingdays-noofdaysabsent;
        System.debug('DaysPresent='+DaysPresent);
        decimal salary =DaysPresent  *salaryperday;
		system.debug('salary=' +salary);        
    } 
    

}