({
    
    calintrest : function(component, event, helper) 
    {
        var pamount=component.get('v.amount');
        var rateofi=component.get('v.roi');
        var noofyrs=component.get('v.noofyears');
        var sii=parseInt(pamount*rateofi*noofyrs/100)
        var totalamntwithintrst=parseInt(pamount)+parseInt(sii);
        component.set('v.si',sii);
        component.set('v.amounttoreturn',totalamntwithintrst); 
		
	}
})