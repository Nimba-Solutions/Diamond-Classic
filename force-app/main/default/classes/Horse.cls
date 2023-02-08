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
            horseRecord.Name = horse.Name != null ? horse.Name : '';
            horseRecord.Gender__c = horse.Gender != null ? horse.Gender : '';
            horseRecord.Date_Foaled__c = horse.DateFoaled != null ? horse.DateFoaled : null;
            horseRecord.Sire__c = horse.Sire != null ? horse.Sire : null;
            horseRecord.Dam__c = horse.Dam != null ? horse.Dam : null;
            horseRecord.Color__c = horse.Color != null ? horse.Color : '';
            horseRecord.Registration_Number__c = horse.RegistrationNumber != null ? horse.RegistrationNumber : '';
            horseRecord.Other__c = horse.Other == null ? false : horse.Other;
            horseRecord.APHA__c = horse.APHA == null ? false : horse.APHA;
            horseRecord.APHC__c = horse.APHC == null ? false : horse.APHC;
            horseRecord.AQHA__c = horse.AQHA == null ? false : horse.AQHA;
            horseRecord.TB__c = horse.TB == null ? false : horse.TB;
            horseRecord.isCompeting__c = horse.Competing == null ? false : horse.Competing;
            
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
    @AuraEnabled public String Name;
    @AuraEnabled public String Gender;
    @AuraEnabled public Date DateFoaled;
    @AuraEnabled public String Sire;
    @AuraEnabled public String Dam;
    @AuraEnabled public String Color;
    @AuraEnabled public String RegistrationNumber;
    @AuraEnabled public String OtherBreed;
    @AuraEnabled public Boolean Other;
    @AuraEnabled public Boolean AQHA;
    @AuraEnabled public Boolean APHA;
    @AuraEnabled public Boolean APHC;
    @AuraEnabled public Boolean TB;
    @AuraEnabled public Boolean Competing;
    @AuraEnabled public List<String> files;
    
    public Horse(Integer id, String name, String gender, Date dateFoaled, String sire, String dam, String color, String registrationNumber, Boolean AQHA, Boolean APHA, Boolean competing, List<String> files) {
        this.id = id;
        this.Name = name;
        this.Gender = gender;
        this.DateFoaled = dateFoaled;
        this.Sire = sire;
        this.Dam = dam;
        this.Color = color;
        this.RegistrationNumber = registrationNumber;
        this.OtherBreed = OtherBreed;
        this.Other = Other;
        this.AQHA = AQHA;
        this.APHA = APHA;
        this.APHC = APHC;
        this.TB = TB;
        this.Competing = competing;
        this.files = files;
    }
}