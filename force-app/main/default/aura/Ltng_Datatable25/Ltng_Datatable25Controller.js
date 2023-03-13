({
    doinit : function(component, event, helper)
    {
        var accid=component.get('v.recordId');	
        component.set('v.columns',[
            {label: 'Contact name', fieldName: 'LastName', type: 'text'},
           {
                label:'contact phone',fieldName:'Phone',type:'text' 
            },
            {
                label:'contact email',fieldName:'Email',type:'text' 
            }
        ]);
        var action=component.get('c.readcon');
        action.setParams({
            cid:accid
        });
        action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               if(Status=="SUCCESS")
                               {
                                   component.set('v.tabledata',Result);
                               }
                           });
        $A.enqueueAction(action);	
    }
})