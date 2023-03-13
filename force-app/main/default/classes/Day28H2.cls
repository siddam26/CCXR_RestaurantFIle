public class Day28H2 {
    
    string studentname;
    string grade;
    integer C;
    integer java;
    integer apex;
    decimal percentage;
    decimal marks;
    decimal totalmarks;
    
    public void Gradeofcandidate( string studentname,integer C,integer java,integer apex)
    {
        this.studentname = studentname;
        this.C=C;
        this.java = java;
        this.apex = apex;
        totalmarks = C + java + apex;
        marks = totalmarks/300;
        percentage=marks*100;
        
        if (percentage > 80 && (C > 40 && java > 40 && apex > 40)) 
        {
            grade ='distinction';
        }
        else if(percentage > 60)
        {
            grade='First grade';
        }
          else if(percentage > 50)
        {
            grade='second grade';
        }
        else
        {
            grade='fail';
        }
        system.debug('studentname:'+studentname);
        system.debug('percentage:'+percentage.round());
        system.debug('grade:'+grade);
  
    }
  
}