public class DAy27c1 {
    public list<Integer> li1=new list<Integer>{33,22,21,3,55,77,47,8};
    public list<Integer> li2=new list<Integer>{333,242,201,33,553,717,47,8,65,43,21};
    public list<Integer> li3=new list<Integer>{3,24,20,330};
        
    public list<list<Integer>> nestedList=new list<list<Integer>>();
    //public list<list<Integer>> newnestedList=new list<list<Integer>>();
    
    public void nestedListOperations(){
        System.debug('Integer list li1='+li1);
        System.debug('Integer list li2='+li2);
        System.debug('Integer list li3='+li3);
        System.debug('Integer list nested List='+nestedList);

        nestedList.add(li1);
        nestedList.add(li2);
        nestedList.add(li3);
        System.debug('Integer list nested List after adding li1 and li2,li3='+nestedList);
        //Iterate nested list
        for(integer i=0;i<nestedList.size();i++){
            for(integer j=0;j<nestedList[i].size();j++){
              system.debug(nestedList[i][j]); 
        }
    }        
    }
}