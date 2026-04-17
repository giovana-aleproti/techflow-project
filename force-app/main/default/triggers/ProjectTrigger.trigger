trigger ProjectTrigger on Project__c (before insert, before update) {
    ProjectHandler handler = new ProjectHandler();
}