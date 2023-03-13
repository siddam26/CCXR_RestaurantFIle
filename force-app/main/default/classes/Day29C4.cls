global virtual class Day29C4 {
    private integer privatevariable=10;
    protected integer protectedvariable=20;
    public integer publicvariable=30;
    global integer globalvariable=40;
    
    private void sayhello()
    {
        system.debug('hello from parent private method:');
    }
    protected void sayhi()
    {
        system.debug('hi from parent class');
    }
    public void parentmethod()
    {
        system.debug('private variable:'+privatevariable);
        system.debug('private variable:'+protectedvariable);
        system.debug('private variable:'+publicvariable);
        system.debug('private variable:'+globalvariable);        
    }
    global void saybye()
    {
        system.debug('bye from parent global method:');
    }
    public virtual void display()
    {
        system.debug('from parent display method:');
    }

}