({
	doinit : function(component, event, helper)
    {
        var actions = [
            { label: 'Show details', name: 'show_details' },
            { label: 'Delete', name: 'delete' }
            ]
            
        
        component.set('v.columns',[
            {label: 'Position Title',fieldName: 'Name', type: 'text'},
            {label: 'Functional Area',fieldName: 'Functional_Area__c',type:'text'},
            {label:'Min Pay',fieldName:'Min_Pay__c',type:'text'},
            {label:'Location',fieldName:'Location__c',type:'text'},
            {label:'Days',fieldName:'Days__c',type:'text'},
          
            { type: 'action', typeAttributes: { rowActions: actions } }            
            
            
            
        ]);
        
      var action=component.get('c.posrec');
       
       
        action.setCallback(this,function(response)
                           {
                               var Status=response.getState();
                               var Result=response.getReturnValue();
                               if(Status=="SUCCESS")
                               {
                                   component.set('v.tabledata',Result);
                               }
                           });
        $A.enqueueAction(action);	
        
		
	},
    handleRowAction: function (cmp, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');

        switch (action.name) {
            case 'show_details':
               alert('Showing Details: ' + JSON.stringify(row));
                break;
            case 'delete':
                helper.removeBook(cmp, row);
                break;
        }
    }
})