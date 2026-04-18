/* 
* Atualizada por Giovana Aleproti, em 18/04/2026
*/
public with sharing class TaskHandler {
    
    public void beforeInsert(List<Task__c> newTasks) {
        for (Task__c task : newTasks) {
            if (task.Name == null || task.Name.trim() == '') {
                task.addError('O nome da tarefa é obrigatório.');
            }
        }
    }

    public void beforeUpdate(List<Task__c> updatedTasks) {
        for (Task__c task : updatedTasks) {
            if (task.Name == null || task.Name.trim() == '') {
                task.addError('O nome da tarefa é obrigatório.');
            }
        }
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