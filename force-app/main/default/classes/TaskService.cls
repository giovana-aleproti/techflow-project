public with sharing class TaskService {
   
    public void checkTaskName(List<Task__c> newTasks) {
         for (Task__c task : newTasks) {
            if (task.Name == null || task.Name.trim() == '') {
                task.addError('O nome da tarefa é obrigatório.');
            }
        }
        System.debug('Método finalizado.');
    }
    
}