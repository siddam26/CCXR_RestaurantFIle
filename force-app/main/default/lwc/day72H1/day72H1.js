import { LightningElement,track,wire } from 'lwc';
import getPos from '@salesforce/apex/day72H1controller.getPositions';

export default class Day72H1 extends LightningElement
 {
    defaultSortDirection = 'asc';
    sortDirection = 'asc';
    sortedBy;
    @track columns = [
        {
            label: 'Position name',
            fieldName: 'Name',
            type: 'text',
            sortable: true
        },
        {
            label: 'Functional Area',
            fieldName: 'Functional_Area__c',
            type: 'text',
            sortable: true
        },
        {
            label: 'Location',
            fieldName: 'Locations__c',
            type: 'text',
            sortable: true
        }];
        @track data 
    
        @wire(getPos) accounts({error,data}){
        if (data) {
            this.data = data;
        } else if (error) {
            this.data = undefined;
        }
    }
    sortBy(field, reverse, primer) {
        const key = primer
            ? function (x) {
                  return primer(x[field]);
              }
            : function (x) {
                  return x[field];
              };

        return function (a, b) {
            a = key(a);
            b = key(b);
            return reverse * ((a > b) - (b > a));
        };
    }

    onHandleSort(event) {
        const { fieldName: sortedBy, sortDirection } = event.detail;
        const cloneData = [...this.data];

        cloneData.sort(this.sortBy(sortedBy, sortDirection === 'asc' ? 1 : -1));
        this.data = cloneData;
        this.sortDirection = sortDirection;
        this.sortedBy = sortedBy;
    }
}