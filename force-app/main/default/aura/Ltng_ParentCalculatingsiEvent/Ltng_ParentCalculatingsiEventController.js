({
	handle : function(component, event, helper) {
        var value=event.getParam("Eamount");
        var value2=event.getParam("Eroi");
        var value1 = event.getParam("Enoofyears");
         var res = (value*value2*value1)/100;
        alert(res);
        var amount =parseInt(res)+parseInt(value);
         alert(amount);
     component.set('v.amount',value);
     component.set('v.roi',value2);
     component.set('v.noofyears',value1);
        component.set('v.amounttoreturn',amount);
        component.set('v.si',res);
        
		
	}
})