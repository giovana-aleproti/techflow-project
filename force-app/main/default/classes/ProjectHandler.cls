/* 
* Atualizada por Giovana Aleproti, em 18/04/2026
*/
public with sharing class ProjectHandler {
    
    public void beforeInsert(List<Project__c> newProjects) {
        for (Project__c project : newProjects) {
            if (project.Name == null || project.Name.trim() == '') {
                project.addError('O nome do projeto é obrigatório.');
            }
        }
    }

    public void beforeUpdate(List<Project__c> updatedProjects) {
        for (Project__c project : updatedProjects) {
            if (project.Name == null || project.Name.trim() == '') {
                project.addError('O nome do projeto é obrigatório.');
            }
        }
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