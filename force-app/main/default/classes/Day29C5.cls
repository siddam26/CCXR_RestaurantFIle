public class Day29C5 extends Day29C4  {
    public integer childvariable = 300;
    public void childmethod()
    {
        //sayhello();//private method
        sayhi();
        parentmethod();
        saybye();
        //system.debug('private variable='+privatevariable);
        system.debug('protected variable:'+protectedvariable);
        system.debug('public variable:'+publicvariable);
        system.debug('global variable:'+globalvariable);
        display();
        super.display();
    }
    public override void display()
    {
        system.debug('this is from redefined child class:');
        system.debug('this is from  child class display:');
    }

}


/*Day29C5 obj2 = new Day29C5();
obj2.childmethod();
obj2.display();*/