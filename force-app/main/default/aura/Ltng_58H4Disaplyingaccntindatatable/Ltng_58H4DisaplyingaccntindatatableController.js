({
	searchaccounts : function(component, event, helper)
    {
        var str = component.get('v.Sindustry');
        component.set('v.columns',[
            {label: 'Account Name', fieldName: 'Name', type: 'text'},
            {label: 'Account Industry',fieldName: 'Industry',type: 'text'},
            {label: 'Account Phone',fieldName: 'Phone',type: 'text'},
            
        ]);
        
        var action = component.get('c.readaccounts');
        alert(str);
        
        action.setParams({
            searchindustry:str
        });
        
        action.setCallback(this,function(Response)
                           {
                               var status = Response.getState();
                               var result = Response.getReturnValue();
                            
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Accounts',result);
                               }
                           });
        
        $A.enqueueAction(action);
        
		
	}
})