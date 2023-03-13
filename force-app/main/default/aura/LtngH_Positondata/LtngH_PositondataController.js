({
	searchPositions : function(component, event, helper)
    {
        var lstr = component.get('v.Plocation');
        var action =component.get('c.readpositions');
        action.setParams({
           searchpositionloc :lstr
        })
        action.setCallback('this',function(Response)
                           {
                               var status = Response.getState();
                               var result= Response.getReturnValue();
                               if(status=="SUCCESS")
                               {
                                   component.set('v.Positions',result)
                               }
                           });
        $A.enqueueAction(action);
		
	}
})