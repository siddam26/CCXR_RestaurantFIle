//future method example
public class Day38C1 {
    id usid;
    @future
    public static void createtask(id usid)
    {
        Task t = new Task();
        t.OwnerId = usid;
        t.Subject='Future task';
        insert t;
    }

}

/*Day38C1.createtask('0055g00000E53EgAAJ');*/