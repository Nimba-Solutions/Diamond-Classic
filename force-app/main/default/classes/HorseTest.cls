@isTest
private class HorseTest {
    @isTest
    static void testConstructor() {
        // Create test data
        Integer id = 1;
        String name = 'Test Horse';
        String gender = 'Mare';
        Date dateFoaled = Date.today();
        String sire = 'Test Sire';
        String dam = 'Test Dam';
        String color = 'Chestnut';
        String registrationNumber = '12345';
        String otherBreed = 'Test Breed';
        Boolean other = true;
        Boolean AQHA = true;
        Boolean APHA = false;
        Boolean APHC = false;
        Boolean TB = false;
        Boolean competing = true;
        List<String> files = new List<String>{'file1', 'file2', 'file3'};

        // Call the Horse constructor
        Horse horse = new Horse(
            id,
            name,
            gender,
            dateFoaled,
            sire,
            dam,
            color,
            registrationNumber,
            otherBreed,
            other,
            AQHA,
            APHA,
            APHC,
            TB,
            competing,
            files
        );

        // Assert that the properties are set correctly
        System.assertEquals(id, horse.id, 'Wrong id set');
        System.assertEquals(name, horse.name, 'Wrong name set');
        System.assertEquals(gender, horse.gender, 'Wrong gender set');
        System.assertEquals(dateFoaled, horse.dateFoaled, 'Wrong dateFoaled set');
        System.assertEquals(sire, horse.sire, 'Wrong sire set');
        System.assertEquals(dam, horse.dam, 'Wrong dam set');
        System.assertEquals(color, horse.color, 'Wrong color set');
        System.assertEquals(registrationNumber, horse.registrationNumber, 'Wrong registrationNumber set');
        System.assertEquals(otherBreed, horse.OtherBreed, 'Wrong OtherBreed set');
        System.assertEquals(other, horse.other, 'Wrong other set');
        System.assertEquals(AQHA, horse.AQHA, 'Wrong AQHA set');
        System.assertEquals(APHA, horse.APHA, 'Wrong APHA set');
        System.assertEquals(APHC, horse.APHC, 'Wrong APHC set');
        System.assertEquals(TB, horse.TB, 'Wrong TB set');
        System.assertEquals(competing, horse.competing, 'Wrong competing set');
        System.assertEquals(files, horse.files, 'Wrong files set');
    }
}
