public with sharing class OpportunityService {
    
    public void checkOpportunityName(List<Opportunity> newOpportunities) {
    //public void checkOpportunityName(List<Opportunity> newOpportunities, Map<Id, Opportunity> oldMap) {
        //List<Opportunity> updatedOpportunities = new List<Opportunity>();    
    
        for (Opportunity opportunity : newOpportunities) {
            if (opportunity.Name == null || opportunity.Name.trim() == '') {
                opportunity.addError('O nome da oportunidade é obrigatório.');
            }
            opportunity.Name = 'OPP|' + opportunity.Name;
            //updatedOpportunities.add(opportunity);
        }
        //update updatedOpportunities;
        System.debug('Método finalizado.');
    }
    
}