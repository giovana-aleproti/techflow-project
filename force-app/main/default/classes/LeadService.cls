public with sharing class LeadService {
    
    public void checkLeadName(List<Lead> newLeads) {
    //public void checkLeadName(List<Lead> newLeads, Map<Id, Lead> oldMap) {
        //List<Lead> updatedLeads = new List<Lead>();    
    
        for (Lead lead : newLeads) {
            if (lead.Name == null || lead.Name.trim() == '') {
                lead.addError('O nome do lead é obrigatório.');
            }
            lead.Name = 'LD|' + lead.Name;
            //updatedLeads.add(lead);
        }
        //update updatedLeads;
        System.debug('Método finalizado.');
    }
    
}