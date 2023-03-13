({
	handleSubmit : function(component, event, helper) {
		event.preventDefault();
        var fields = event.getParams('fields');
        fields.Name="Sales Account";
        component.find('myRecordForm').submit(fields);
        component.find('notify').showToast({
            "title":"Success",
            "message":"The record has been updated successfully"
        })
        
	}
})