public class Day25H1 {
     public enum cities{Hyderabad,Pune,Lucknow,Chandigarh,Agra,NewDelhi}
    public cities c1;
    public cities c2;
    public cities c3;
    public cities c4;
    public cities c5;
    public cities c6;
    
    public void displayCity(){
        system.debug('c1='+c1);
        system.debug('c2='+c2);
        system.debug('c3='+c3);
        system.debug('c4='+c4);
        system.debug('c5='+c5);
        system.debug('c6='+c6);
        
         c1 = cities.Hyderabad;
        system.debug('c1 after assignment='+c1);
        c5 = cities.Agra;
        system.debug('c5 after assignment='+c5);
        
    }
    public void displayc2(cities city2,cities city4){
        system.debug('c2='+ c2);
        c2 = city2;
        system.debug('c2 after assignment from parameter='+c2);
        system.debug('c4='+ c4);
        c4 = city4;
        system.debug('c4 after assignment from parameter='+c4);
        system.debug('c3='+c3);
        c3=displayc3();
        system.debug('c3 after return='+c3);
        system.debug('c6='+c6);
         c6=displayc6();
        system.debug('c6 after return='+c6);
    }
    public  cities displayc3(){
        c3 = cities.Lucknow;
        return c3;
    }
    public  cities displayc6(){
        c6 = cities.NewDelhi;
        return c6;
    }


}