public class Horse {
    public Horse(){
        // no arg constructor bc SF says so
    }
    
    @AuraEnabled
    public static void createHorseRecord(Horse[] horses) {
        system.debug('HORSES: '+ horses);
        List<Horse__c> horseRecords = new List<Horse__c>();
        List<ContentDocumentLink> documentLinks = new List<ContentDocumentLink>();
        Map<String, Horse__c> horseFileMap = new Map<String, Horse__c>();
        
        for (Horse horse : horses) {
            Horse__c horseRecord = new Horse__c();
            horseRecord.name = horse.name != null ? horse.name : '';
            horseRecord.Gender__c = horse.gender != null ? horse.gender : '';
            horseRecord.Date_Foaled__c = horse.dateFoaled != null ? horse.dateFoaled : null;
            horseRecord.Sire__c = horse.sire != null ? horse.sire : '';
            horseRecord.Dam__c = horse.dam != null ? horse.dam : '';
            horseRecord.Color__c = horse.color != null ? horse.color : '';
            horseRecord.Registration_Number__c = horse.registrationNumber != null ? horse.registrationNumber : '';
            horseRecord.Other__c = horse.other != null ? horse.other : false;
            horseRecord.APHA__c = horse.APHA != null ? horse.APHA : false;
            horseRecord.APHC__c = horse.APHC != null ? horse.APHC : false;
            horseRecord.AQHA__c = horse.AQHA != null ? horse.AQHA : false;
            horseRecord.TB__c = horse.TB != null ? horse.TB : false;
            horseRecord.isCompeting__c = horse.Competing != null ? horse.Competing : false;
            
            
            horseRecords.add(horseRecord);
            
            if (horse.files != null) {
                for (String fileId : horse.files) {
                    horseFileMap.put(fileId, horseRecord);
                }
            }
        }
        
        insert horseRecords;
        
        for (String fileId : horseFileMap.keySet()) {
            Horse__c horseRecord = horseFileMap.get(fileId);
            ContentDocumentLink documentLink = new ContentDocumentLink();
            documentLink.ContentDocumentId = fileId;
            documentLink.LinkedEntityId = horseRecord.Id;
            documentLinks.add(documentLink);
        }
        
        insert documentLinks;
    }
    
    @AuraEnabled public Integer id;
    @AuraEnabled public String name;
    @AuraEnabled public String gender;
    @AuraEnabled public Date dateFoaled;
    @AuraEnabled public String sire;
    @AuraEnabled public String dam;
    @AuraEnabled public String color;
    @AuraEnabled public String registrationNumber;
    @AuraEnabled public String OtherBreed;
    @AuraEnabled public Boolean other;
    @AuraEnabled public Boolean AQHA;
    @AuraEnabled public Boolean APHA;
    @AuraEnabled public Boolean APHC;
    @AuraEnabled public Boolean TB;
    @AuraEnabled public Boolean competing;
    @AuraEnabled public List<String> files;
    
    public Horse(Integer id, 
                 String name, 
                 String gender, 
                 Date dateFoaled, 
                 String sire, 
                 String dam, 
                 String color, 
                 String registrationNumber, 
                 String otherBreed, 
                 Boolean other, 
                 Boolean AQHA, 
                 Boolean APHA, 
                 Boolean APHC, 
                 Boolean TB, 
                 Boolean competing,
                 List<String> files) {
                     this.id = id;
                     this.name = name;
                     this.gender = gender;
                     this.dateFoaled = dateFoaled;
                     this.sire = sire;
                     this.dam = dam;
                     this.color = color;
                     this.registrationNumber = registrationNumber;
                     this.OtherBreed = otherBreed;
                     this.other = other;
                     this.AQHA = AQHA;
                     this.APHA = APHA;
                     this.APHC = APHC;
                     this.TB = TB;
                     this.Competing = competing;
                     this.files = files;
                 }
}