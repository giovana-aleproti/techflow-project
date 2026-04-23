public with sharing class TaskService {
   
    public void checkTaskName(List<Task__c> newTasks) {
        List<Task__c> updatedTasks = new List<Task__c>();

        for (Task__c task : newTasks) {
            if (task.Name == null || task.Name.trim() == '') {
                task.addError('O nome da tarefa é obrigatório.');
            }
            task.Name = task.Project__r.Name + '|TSK:' + task.Name;
        }
        update newTasks;
        System.debug('Método finalizado.');
    }

}