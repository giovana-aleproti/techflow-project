public with sharing class ProjectService {
    
    public void checkProjectName(List<Project__c> newProjects) {
         for (Project__c project : newProjects) {
            if (project.Name == null || project.Name.trim() == '') {
                project.addError('O nome do projeto é obrigatório.');
            }
        }
        System.debug('Método finalizado.');
    }
    
}