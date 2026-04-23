public with sharing class ProjectService {
    
    public void checkProjectName(List<Project__c> newProjects) {
    //public void checkProjectName(List<Project__c> newProjects, Map<Id, Project__c> oldMap) {
        List<Project__c> updatedProjects = new List<Project__c>();    
    
        for (Project__c project : newProjects) {
            if (project.Name == null || project.Name.trim() == '') {
                project.addError('O nome do projeto é obrigatório.');
            }
            project.Name = 'PRJ - ' + project.Name;
            updatedProjects.add(project);
        }
        update updatedProjects;
        System.debug('Método finalizado.');
    }
    
}