({
	childaction : function(component, event, helper) {
        var params=event.getParam('arguments');
        if(params)
        {
            var param1 = params.childAttr;
        }
		return param1+'appended text from child method'
	}
})