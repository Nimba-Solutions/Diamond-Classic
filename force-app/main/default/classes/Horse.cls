public class Horse {
    public Horse(){
        // no arg constructor bc SF says so
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