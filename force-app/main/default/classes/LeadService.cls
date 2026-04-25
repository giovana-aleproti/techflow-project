public with sharing class LeadService {
    
    public void convertLead(List<Lead> newLeads) {
        for (Lead lead : newLeads) {           
            createRelatedFromLeadConvert(lead);
            lead.Status = 'Closed - Converted';
        }

        System.debug('Método finalizado.');
    }
    
    public static void createRelatedFromLeadConvert(Lead lead) {
        
        Account acc = new Account(
            Name = lead.Company,
            Phone = lead.Phone,
            Website = lead.Website
        );
        insert acc;
      
        Contact cont = new Contact(
            FirstName = lead.FirstName,
            LastName = lead.LastName,
            Email = lead.Email,
            Phone = lead.Phone,
            AccountId = acc.Id
        );
        insert cont;
        
        Opportunity opp = new Opportunity(
            Name = lead.Company, 
            AccountId = acc.Id,          
            StageName = 'Prospecting'
        );
        insert opp;
    
    }   

}