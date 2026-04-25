/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class LeadHandler {
    
    LeadService ps = new LeadService();

    public void beforeInsert(List<Lead> newLeads) {
        ps.checkLeadName(newLeads);
    }

}