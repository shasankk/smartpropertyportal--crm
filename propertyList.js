import { LightningElement, wire } from 'lwc';
import getAvailableProperties from '@salesforce/apex/PropertyController.getAvailableProperties';

export default class PropertyList extends LightningElement {
    columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Price', fieldName: 'Price__c', type: 'currency' },
        { label: 'Location', fieldName: 'Location__c' },
        { label: 'Status', fieldName: 'Status__c' }
    ];

    @wire(getAvailableProperties)
    properties;
}