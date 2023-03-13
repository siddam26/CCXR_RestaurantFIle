public class Day27H2 {
    public Map<string, list<Lead>> lm1 = new Map<string, list<Lead>>() ;  
    public Map<string, list<Lead>> lm2 = new Map<string, list<Lead>>();
    public List<lead> chemicallist = new List<lead>(); 
    
    public Lead a1=new Lead(lastname='New lead1',Industry='Chemicals',Region__c='USA',Email='Newlead1@gmail.com');
    public Lead a2=new Lead(lastname='New lead2',Industry='Chemicals',Region__c='USA',Email='Newlead2@gmail.com');
    public Lead a3=new Lead(lastname='New lead3',Industry='Chemicals',Region__c='USA',Email='Newlead3@gmail.com');
    public Lead a4=new Lead(lastname='New lead4',Industry='Chemicals',Region__c='USA',Email='Newlead4@gmail.com');
    public Lead a5=new Lead(lastname='New lead5',Industry='Chemicals',Region__c='USA',Email='Newlead5@gmail.com');
    
    public List<lead> Manufacturinglist = new List<lead>();
    public Lead la1=new Lead(lastname='New lead1',Industry='Manufacturing',Region__c='UK',Email='Newlead1@gmail.com');
    public Lead la2=new Lead(lastname='New lead2',Industry='Manufacturing',Region__c='UK',Email='Newlead2@gmail.com');
    public Lead la3=new Lead(lastname='New lead3',Industry='Manufacturing',Region__c='UK',Email='Newlead3@gmail.com');
    public Lead la4=new Lead(lastname='New lead4',Industry='Manufacturing',Region__c='UK',Email='Newlead4@gmail.com');
    public Lead la5=new Lead(lastname='New lead5',Industry='Manufacturing',Region__c='UK',Email='Newlead5@gmail.com');
    
    public void leads(){
    chemicallist.add(a1);
    chemicallist.add(a2);
    chemicallist.add(a3);
    chemicallist.add(a4);
    chemicallist.add(a5);
        
    Manufacturinglist.add(la1);
    Manufacturinglist.add(la2);
    Manufacturinglist.add(la3);
    Manufacturinglist.add(la4);
    Manufacturinglist.add(la5);

     lm1.put('Chemicals', chemicallist);
        for(integer i =0;i<lm1.size();i++)
        {
            system.debug('chemicallist=:'+lm1); 
        }
        
        lm2.put('Manufacturing', Manufacturinglist);
        for(integer i =0;i<lm2.size();i++)
        {
            system.debug('chemicallist=:'+lm2); 
        }
    }
    
    
    

}