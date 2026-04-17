trigger TaskTrigger on Task__c (before insert, before update) {
    TaskHandler handler = new TaskHandler();
}