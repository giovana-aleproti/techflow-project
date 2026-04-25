/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class LeadHandler {
    
    LeadService ld = new LeadService();

    public void beforeInsert(List<Lead> newLeads) {
        // Lógica para executar antes da inserção de leads, se necessário
        System.debug('Before Insert.');
    } 
    
    public void beforeUpdate(List<Lead> updatedLeads) {
        ld.convertLead(updatedLeads);
    }

    /*
    public void afterInsert(List<Lead> newLeads) {
        // Lógica para executar após a inserção de leads, se necessário
    }

    public void afterUpdate(List<Lead> updatedLeads) {
        // Lógica para executar após a atualização de leads, se necessário
    }

    public void beforeDelete(List<Lead> leadsToDelete) {
        // Lógica para executar antes da exclusão de leads, se necessário
    }

    public void afterDelete(List<Lead> deletedLeads) {
        // Lógica para executar após a exclusão de leads, se necessário
    }
    */
}