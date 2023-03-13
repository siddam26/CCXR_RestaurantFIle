({
    doInit : function(component, event, helper) {
        component.set('v.mycolumns', [
            {label: 'Position Name', fieldName: 'Name',sortable:true, type: 'text'},
            {label: 'status__c', fieldName: 'Status__c', type: 'text'},
            {label: 'Functional_Area__c', fieldName: 'Functional_Area__c', type: 'text'},
            {label: 'Location__c', fieldName: 'Location__c', type: 'text '},
            {label: 'Max_Pay__c', fieldName: 'Max_Pay__c', type: 'text '}
            
        ]);
        
        var action = component.get("c.fetchpos");
        
        action.setCallback(this, function(response){
            var state = response.getState();
            var res =  response.getReturnValue();
            if (state == "SUCCESS") {
                helper.handleSort(component,event);
                component.set("v.posList",res );
            }
        });
        $A.enqueueAction(action);
        
    }
    
    
    
})