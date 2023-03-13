public class Day25C3 {
    public string s1='Welcome';
    public string s2='Hello How are you?';
    public string s3='Welcome to Apex World';
    public string s4;
    public string s5;
    public string s6='Welcome';
    
    public void StringMethods(){
        system.debug('s1='+s1);
        system.debug('s2='+s2);
        system.debug('s3='+s3);
        system.debug('s4='+s4);
        system.debug('s5='+s5);
        system.debug('s6='+s6);
  //1.length
        system.debug('length of s1:'+s1.length());
  //2.charAt
        system.debug('character at index 3 in s2='+s2.charAt(3));
  //3.contains
         system.debug('s3 contains s1='+s3.contains(s1));
         system.debug('s3 contains s2='+s3.contains(s2));
         system.debug('s3 contains "Apex"='+s3.contains('Apex'));
         system.debug('s3 contains \'Apex\'='+s3.contains('Apex'));
         system.debug('s3 contains \'Welcome\'='+s3.contains('Welcome'));
        system.debug('s3 contains \'Welcome\'='+s3.containsIgnoreCase('welcome'));
  //4.White space
         system.debug('s3 contains white space='+s3.containsWhitespace());
  //5.Starts with
         system.debug('s2 starts with \'hello\'='+s2.startsWith('Hello'));
        system.debug('s2 starts with \'hello\'='+s2.startsWithIgnoreCase('hello'));
  //6.Ends with
        system.debug('s2 starts with \'you\'='+s2.endsWith('you'));
      
   //7.center
        system.debug('Centered s1 text='+s1.center(20));
        system.debug('Centered s1 text with padded='+s1.center(20,'*'));
   //8.compare to
        system.debug('s2 compared with s6='+s2.compareTo(s6));
   //9.Equals
        system.debug('s2 equals s1='+s2.equals(s1));
   //10.IndexoF
        system.debug('Index of \'Are\'='+s3.indexOf('are'));
   //11.Alpha
        system.debug('s2 contains only alphabets?='+s2.isAlpha());
   //12.IsBlank
         system.debug('Is s4 Blank='+string.isBlank(s4));
   //13.left
         system.debug('left 5 characters of s2='+s2.left(5));
   //14.left pad
         system.debug('left pad='+s2.leftPad(25, '$'));
   //15.subString
         system.debug('substring from index 6 to end='+s2.substring(6));
        system.debug('substring from index 6 to 12='+s2.substring(6,12));
   //16.remove
        system.debug('remove \'you\'from s2='+s2.remove('you'));
        
        
        
    }

}