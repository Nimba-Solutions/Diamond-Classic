public with sharing class PedigreeTableController {
    @AuraEnabled
    public static Horse__c createHorse(String objectApiName) {
        Horse__c horse = new Horse__c(
            Registration_Number__c = null,
            Gender__c = null,
            Date_Foaled__c = null,
            Sire__c = null,
            Dam__c = null,
            Color__c = null,
            APHA__c = false,
            APHC__c = false,
            AQHA__c = false,
            TB__c = false,
            Other__c = false,
            Other_Breed_Association__c = null,
            IsCompeting__c = false
        );
        insert horse;
        return horse;
    }
}