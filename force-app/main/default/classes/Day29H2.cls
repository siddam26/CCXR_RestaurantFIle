public class Day29H2 {

    public List<integer> removeList;
    public void passByReference(List<integer> c){
        System.debug('c value from passByReference before update = '+c);
        c.add(25);
        c.add(90);
        c.add(75);
        c.add(4);
        c.add(150);
        System.debug('c value from passByReference After update ='+c);    
    }
    public void display(List<integer> removeList){
        this.removeList = removeList;
        System.debug('New List from method call before update ='+removeList);
        passByReference(removeList);
        System.debug('New List from method call after update ='+removeList);
        removeList.remove(4);
        System.debug('New List after Removing the element ='+ removeList);
    }
}

/*list<integer> l2 = new list<integer>{35,450,652};
   Day29H2 obj3 = new Day29H2();
obj3.display(l2);*/