public class Day27H1
{
    decimal newsalary;
    public list<decimal> Salary=new list<decimal>();
    
    public list<decimal> hikedSalary=new list<decimal>();
    
    public void salaryUpdate()
    {
         system.debug('Salary list:'+Salary);
         salary.add(25000);
         salary.add(28000);
         salary.add(35000);
         salary.add(45000);
         salary.add(55000);
         system.debug(' after adding Salary to salary list :' +Salary);
        
        for(integer i=0;i<Salary.size();i++)
        {
            newSalary = Salary[i] + (Salary[i] * 0.10) ;
            
            hikedSalary.add(newSalary);
        }
        system.debug('Hiked Salary :' +hikedSalary);
    }
}