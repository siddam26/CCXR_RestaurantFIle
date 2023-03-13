public class Day28C8 {
    public String Choice;
    public Integer a;
    public Integer b;
    public Integer c;
    public Void switchOperation(Integer x,Integer y,String ch)        
    {
        this.a=x;
        this.b=y;
        this.choice=ch;
        Switch on Choice
        {
            when 'Addition'
            {
                c=a+b;
            }
            when 'Subtraction'
            {
                c=a-b;
            }
            when 'Multiplication'
            {
                c=a*b;
            }
            when 'Division'
            {
                c=a/b;
            }
            when else
            {
                System.debug('Invalid Choice');
            }
        }
        display();
    }
    Public void display()
        {
            System.debug('Value of A='+a);
            System.debug('Value of B='+b);
            System.debug('Value of C='+c);
            System.debug('Operation='+choice);
        }

}