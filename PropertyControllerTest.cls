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