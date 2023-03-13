public class Day28C7 {
    integer age;
    integer salary;
    integer newsalary;
    public void calculate(integer age,integer salary)
    {
        this.age=age;
        this.salary=salary;
        if(age<=25 && salary>30000)
        {
            newsalary = salary+10000;
        }
        else if(age>=25 && age<=40)
        {
            newsalary= salary+20000;
        }
        else if(salary > 35000)
        {
            newsalary=salary+25000;
        }
        else
        {
            newsalary= salary+25000;
        }
        display();
    }
    public void display()
    {
        system.debug('age='+age);
        system.debug('salary='+salary);
        system.debug('new salary='+newsalary);
    }
    

}