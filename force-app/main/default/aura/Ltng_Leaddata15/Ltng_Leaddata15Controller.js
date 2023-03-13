({
	searchleads : function(component, event, helper)
    {
        var lstr = component.get('v.Sindustry');
        var action =component.get('c.readLeads');
        action.setParams({
           searchleadindus :lstr
        })
        action.setCallback('this',function(Response)
                           {
                               var status = Response.getState();
                               var result= Response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Leads',result)
                               }
                           });
        $A.enqueueAction(action);
		
	}
})