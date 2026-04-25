@isTest 
private class LeadServiceTest {
    
    @isTest static void testConvertLead() {

        Lead lead = new Lead(
            FirstName = 'Tes',
            LastName = '1',
            Company = 'TechFlow',
            Email = 'tst.e@techflow.com',
            Phone = '1234567890',
            Status = 'New'
        ); 
        insert lead;

        Test.startTest();
        
        List<Lead> leadsToUpdate = [SELECT Id, Status FROM Lead WHERE Id = :lead.Id];
            for (Lead l : leadsToUpdate) {
                l.Status = 'Qualified';
            }
        update leadsToUpdate;
        
        Test.stopTest();
        
        Lead updatedLead = [SELECT Id, Status FROM Lead WHERE Id = :lead.Id];
        System.assertEquals('Closed - Converted', updatedLead.Status, 'Lead Status should be "Closed - Converted" after conversion.');
    }
}