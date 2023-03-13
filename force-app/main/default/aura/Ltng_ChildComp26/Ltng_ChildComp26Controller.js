({
	handleEvent : function(component, event, helper) {
        var cmpevt = component.getEvent("regInchild");
        
        cmpevt.setParams({
            storeMessage:component.get('v.textMessage')
        });
        
		cmpevt.fire();
	}
})