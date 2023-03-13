({
	addnum1 : function(component, event, helper) {
        var fnum=component.get('v.Fnumber');
        var snum=component.get('v.Snumber');
        var res=parseInt(fnum)+parseInt(snum)
        component.set('v.Result',res);        
		
	},
    subnum1 : function(component, event, helper) {
        var fnum=component.get('v.Fnumber');
        var snum=component.get('v.Snumber');
        var res=fnum-snum
        component.set('v.Result',res);        
		
	},
    Mulnum1 : function(component, event, helper) {
        var fnum=component.get('v.Fnumber');
        var snum=component.get('v.Snumber');
        var res=fnum*snum
        component.set('v.Result',res);        
		
	},
    Divnum1 : function(component, event, helper) {
        var fnum=component.get('v.Fnumber');
        var snum=component.get('v.Snumber');
        var res=fnum/snum
        component.set('v.Result',res);        
		
	}
})