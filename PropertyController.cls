public with sharing class PropertyController {
    @AuraEnabled(cacheable=true)
    public static List<Property__c> getAvailableProperties() {
        return [SELECT Id, Name, Price__c, Location__c, Status__c 
                FROM Property__c WHERE Status__c = 'Available'];
    }
}