({
	addnum3 : function(component, event, helper) {
        var fnum=component.get('v.Fnumber');
        var snum=component.get('v.Snumber');
        var res=fnum+snum
        component.set('v.Result',res);        
		
	}
})