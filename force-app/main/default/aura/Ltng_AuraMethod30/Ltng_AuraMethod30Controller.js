({
	gotoauramethod : function(component, event, helper) {
        var chldcmp = component.find("aurachild");
        var parentvalue=component.get("v.parentAttr");
        var result=chldcmp.testmethod(parentvalue);
        component.set('v.parentAttr',result);
		
	}
})