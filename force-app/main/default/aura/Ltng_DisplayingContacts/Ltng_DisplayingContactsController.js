({
	getcontacts : function(component, event, helper) {
        var cont = component.get('v.contacts');
        var accid = component.get('v.recordId');
        var action = component.get('c.cons');
        alert(accid);
        action.setParams({
            accntid:accid
        });
        action.setCallback(this,function(response)
                           {
                              var status=response.getState();
                               var result=response.getReturnValue();
                               alert(status);
                               if(status=="SUCCESS")
                               {
                                   alert('success');
                                  component.set('v.contacts',result)
                               }
                               
                           });
        $A.enqueueAction(action);
		
	}
})