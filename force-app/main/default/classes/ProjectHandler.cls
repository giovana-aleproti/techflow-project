/* 
* Atualizada por Giovana Aleproti, em 18/04/2026
*/
public with sharing class ProjectHandler {
    
    ProjectService ps = new ProjectService();

    public void beforeInsert(List<Project__c> newProjects) {
        ps.checkProjectName(newProjects);
    }

    public void beforeUpdate(List<Project__c> updatedProjects) {
    //public void beforeUpdate(List<Project__c> updatedProjects, Map<Id, Project__c> oldMap) {
        ps.checkProjectName(updatedProjects);
        //ps.checkProjectName(updatedProjects, oldMap);

    }

    /*
    public void afterInsert(List<Project__c> newProjects) {
        // Lógica para executar após a inserção de projetos, se necessário
    }

    public void afterUpdate(List<Project__c> updatedProjects) {
        // Lógica para executar após a atualização de projetos, se necessário
    }

    public void beforeDelete(List<Project__c> projectsToDelete) {
        // Lógica para executar antes da exclusão de projetos, se necessário
    }

    public void afterDelete(List<Project__c> deletedProjects) {
        // Lógica para executar após a exclusão de projetos, se necessário
    }
    */

}