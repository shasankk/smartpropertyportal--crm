##apex##
###propertycontroller.cls###
public with sharing class PropertyController {
    @AuraEnabled(cacheable=true)
    public static List<Property__c> getAvailableProperties() {
        return [SELECT Id, Name, Price__c, Location__c, Status__c FROM Property__c WHERE Status__c = 'Available'];
    }
}
##apex##
###propertycontrollertest.cls###
@isTest
public class PropertyControllerTest {
    @isTest
    static void testGetAvailableProperties() {
        Property__c prop = new Property__c(
            Name = 'Test Property',
            Price__c = 500000,
            Location__c = 'Hyderabad',
            Status__c = 'Available'
        );
        insert prop;

        Test.startTest();
        List<Property__c> results = PropertyController.getAvailableProperties();
        Test.stopTest();

        System.assertEquals(1, results.size(), 'Should return 1 available property');
    }
}
