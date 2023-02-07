public class Horse {
    
    @AuraEnabled public Integer id;
    @AuraEnabled public String Name;
    @AuraEnabled public String Gender;
    @AuraEnabled public Date DateFoaled;
    @AuraEnabled public String Sire;
    @AuraEnabled public String Dam;
    @AuraEnabled public String Color;
    @AuraEnabled public String RegistrationNumber;
    @AuraEnabled public Boolean AQHA;
    @AuraEnabled public Boolean APHA;
    @AuraEnabled public String Competing;
    @AuraEnabled public List<Id> FileIds;

    public Horse(Integer id, String name, String gender, Date dateFoaled, String sire, String dam, String color, String registrationNumber, Boolean AQHA, Boolean APHA, String competing, List<Id> fileIds) {
        this.id = id;
        this.Name = name;
        this.Gender = gender;
        this.DateFoaled = dateFoaled;
        this.Sire = sire;
        this.Dam = dam;
        this.Color = color;
        this.RegistrationNumber = registrationNumber;
        this.AQHA = AQHA;
        this.APHA = APHA;
        this.Competing = competing;
        this.FileIds = fileIds;
    }
}