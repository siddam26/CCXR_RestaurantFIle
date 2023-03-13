({
	addString : function(component, event, helper) {
		var fNam = component.get('v.FName');
        var LNam =  component.get('v.LName');
        var finalNam = fNam.concat(" ",LNam);
        component.set('v.FullName',finalNam);
	}
})