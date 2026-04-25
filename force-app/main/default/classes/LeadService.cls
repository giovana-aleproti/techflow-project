public with sharing class LeadService {
    
    public static void convertQualifiedLeads(List<Lead> newLeads, Map<Id, Lead> oldLeadMap) {
        List<Database.LeadConvert> toConvert = new List<Database.LeadConvert>();

        for (Lead lead : newLeads) {           
            
            if (lead.Status == 'Qualified' && oldLeadMap.get(lead.Id).Status != 'Qualified') {

                Database.LeadConvert lc = new Database.LeadConvert();
                lc.setLeadId(lead.Id);
                lc.setDoNotCreateOpportunity(false);
                lc.setOpportunityName(lead.Company);
                lc.setOwnerId(UserInfo.getUserId());
                Database.convertLead(lc);
                
                toConvert.add(lc);

                System.debug('Converted: ' + lead.Id);
            } else {
                System.debug('Not Qualified: ' + lead.Id);
            }          
        }
        if (!toConvert.isEmpty()) {
            Database.convertLead(toConvert);
        }
        System.debug('Method convertQualifiedLeads Finished.');
    }

}