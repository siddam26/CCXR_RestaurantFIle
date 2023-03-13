({
	handleFromchild : function(component, event, helper) {
        var ValueFromEvent = event.getParam("storeMessage");
        component.set('v.ParentMessage',ValueFromEvent);
		
	}
})