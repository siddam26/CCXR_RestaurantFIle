({
	handleFromchild : function(component, event, helper) {
        var valuefromchild = event.getParam("storeMessage");
        component.set('v.ParentMessage',valuefromchild);
		
	}
})