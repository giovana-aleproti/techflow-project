/* 
* Atualizada por Giovana Aleproti, em 25/04/2026
*/
public with sharing class OpportunityHandler {
    
    OpportunityService ps = new OpportunityService();

    public void beforeInsert(List<Opportunity> newOpportunities) {
        ps.checkOpportunityName(newOpportunities);
    }

}