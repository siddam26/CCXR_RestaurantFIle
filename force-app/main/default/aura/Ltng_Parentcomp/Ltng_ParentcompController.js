({
	gotoaura : function(component, event, helper) {
        var chldcomp=component.find("aurachild");
        var Name=component.get("v.name");
        var age = component.get("v.age");
        var salary = component.get("v.salary");
        chldcomp.testmethod(Name,age,salary);
		
	}
})