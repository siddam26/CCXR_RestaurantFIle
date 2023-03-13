public class Day28C6 {
    public integer age;
    public integer salary;
    public integer newsalary;
    
    public void calculatedNewsalary(integer age,integer salary)
    {
       
        if(age > 25)
        {
            if(salary > 30000)
            {
                newsalary = salary + 1000;
            }
        }
        system.debug('age='+age);
        system.debug('salary='+salary);
        system.debug('newsalary='+newsalary);
    }

}