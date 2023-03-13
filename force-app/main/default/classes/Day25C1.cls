public class Day25C1 {
    
    public enum mycolourset{red,blue,green}
    public mycolourset myEnumVar1;
    public mycolourset myEnumVar2;
    public mycolourset myEnumVar3;
    public void displayEnums(){
        system.debug('myEnumVar1='+myEnumVar1);
        system.debug('myEnumVar2='+myEnumVar2);
        system.debug('myEnumVar3='+myEnumVar3);
        
         myEnumVar1 = mycolourset.blue;
        system.debug('myEnumvar1 after assignment='+myEnumVar1);
    }
    public void displayEnums2(mycolourset e2){
        system.debug('myEnumVar2='+ myEnumVar2);
        myEnumVar2 = e2;
        system.debug('myEnumVar2 after assignment from parameter='+myEnumVar2);
        system.debug('myEnumVar3='+myEnumVar3);
        myEnumVar3=displayEnums3();
        system.debug('myEnumVar3 after return='+myEnumVar3);
    }
    public mycolourset displayEnums3(){
        myEnumVar3 = mycolourset.green;
        return myEnumVar3;
    }

}