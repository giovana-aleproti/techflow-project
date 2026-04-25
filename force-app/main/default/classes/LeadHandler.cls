/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class LeadHandler {
    
    public static void beforeInsert(List<Lead> newLeads) {
        //System.debug('Before Insert.');
    } 
    
    public static void beforeUpdate(List<Lead> updatedLeads, Map<Id, Lead> oldLeadMap) {
        //System.debug('Before Update.');
    }

    public static void afterInsert(List<Lead> newLeads) {
        //System.debug('After Insert.');
    }

    public static void afterUpdate(List<Lead> updatedLeads, Map<Id, Lead> oldLeadMap) {
        //System.debug('After Update.');
        LeadService.convertQualifiedLeads(updatedLeads, oldLeadMap);
    }

    public static void beforeDelete(List<Lead> leadsToDelete) {
        //System.debug('Before Delete.');
    }

    public static void afterDelete(List<Lead> deletedLeads) {
        //System.debug('After Delete.');
    }

}