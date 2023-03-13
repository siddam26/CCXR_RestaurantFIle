({
	handleEvent : function(component, event, helper) {
        var appevt = $A.get("e.c:Ltng_AppEvent27");
        
        appevt.setParams({
            storeMessage:component.get('v.textMessage')
        });
        appevt.fire();
        
	}
})