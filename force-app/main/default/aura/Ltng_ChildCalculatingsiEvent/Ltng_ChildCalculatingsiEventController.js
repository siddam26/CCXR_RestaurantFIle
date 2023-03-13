({
	calintrest : function(component, event, helper) {
        var cmpevt = component.getEvent("reginChild");
        cmpevt.setParams({
            Eamount:component.get('v.amount'),
            Eroi:component.get('v.roi'),
            Enoofyears:component.get('v.noofyears'),
            
            
            
        });
       
      
		cmpevt.fire();
	}
})