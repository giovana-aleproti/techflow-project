/* 
* Atualizada por Giovana Aleproti, em 18/04/2026
*/
public with sharing class TaskHandler {
    
    TaskService ts = new TaskService();

    public void beforeInsert(List<Task__c> newTasks) {
        ts.checkTaskName(newTasks);
    }

    public void beforeUpdate(List<Task__c> updatedTasks, Map<Id, Task__c> oldMap) {
        ts.checkTaskName(updatedTasks);
    }

    /*
    public void afterInsert(List<Task__c> newTasks) {
        // Lógica para executar após a inserção de tarefas, se necessário
    }

    public void afterUpdate(List<Task__c> updatedTasks) {
        // Lógica para executar após a atualização de tarefas, se necessário
    }

    public void beforeDelete(List<Task__c> tasksToDelete) {
        // Lógica para executar antes da exclusão de tarefas, se necessário
    }

    public void afterDelete(List<Task__c> deletedTasks) {
        // Lógica para executar após a exclusão de tarefas, se necessário
    }
    */

}