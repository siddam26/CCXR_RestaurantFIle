({
	searchaccounts : function(component, event, helper)
    {
        var str = component.get('v.Sindustry');
        //1.get the apex class function
        var action = component.get('c.readaccounts');
        //2.set the parameteres
        action.setParams({
            searchindustry:str
        });
        //4.get he result from apex controller
        action.setCallback(this,function(Response)
                           {
                               var status = Response.getState();
                               var result = Response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Accounts',result);
                               }
                           });
        //3.enqueue the action
        $A.enqueueAction(action);
        
		
	}
})