public class Day30H5 implements Day30H3,Day30H4 {
    public integer ecode ;
    decimal salary;
    public integer dayspresent;
    public Integer noofhours;
    public Integer noofleaves;
     public decimal payperhour;
    
     
    
    public static void calculateregularemployeesalary(integer ecode,decimal salary,integer nofleaves)
    {
        
        decimal tax;
        decimal salaryaftertax;
        Date dt = system.today();
        integer daysinmonth = date.daysInMonth(dt.year(), dt.month());
        integer dayspresent = daysinmonth - nofleaves;
        decimal salperday = salary/daysinmonth;
        
        if(salary > 25000 && salary < 50000 )
        {
            tax = salary*0.05;
        }
        else if(salary > 50000 && salary < 75000 )
        {
            tax =  salary*0.10;
        }
        else if(salary > 75000 && salary < 100000 )
        {
            tax = salary*0.15;
        }
        else if(salary > 100000 )
        {
            salary = 0.20;
        }
        else
        {
            tax = salary * 0;
        }
        
        salary = salperday* dayspresent; 
        salaryaftertax = (salperday * dayspresent)- tax;
        system.debug('emp code:'+ecode);
        system.debug('days in month:'+daysinmonth);
        system.debug('days present:'+dayspresent);
        system.debug('salary per day:'+salperday.round());
        system.debug('Salary before tax:'+salary.round());
        system.debug('tax:'+tax);
        system.debug('salary after tax:'+salaryaftertax.round());
        
        
        
    }
     public static  void calculatedailywageemployeesalary(integer ecode,Integer noofhours,decimal payperhour)
     {
         
         Integer noofworkinghours=8;
        decimal daysalary = payperhour * noofhours;
         system.debug('emp code:'+ecode);
        System.debug('no of working hours='+noofworkinghours);
        System.debug('pay per hour='+payperhour.round());
        system.debug('no of hours worked='+noofhours);
        System.debug('daily wage='+daysalary.round());
        
    }
       
}   


    /*Day30H5 obj =new Day30H5();
   string Etype='regular employee';
        if(Etype == 'regular employee')
        {
            Day30H5.calculateregularemployeesalary( 301,  25000,  5  );
        }
        else if(Etype == 'daily wage employee')
        {
            Day30H5.calculatedailywageemployeesalary( 302, 8 , 1000 );
        }
        else{
            System.debug('hi');
        }*/