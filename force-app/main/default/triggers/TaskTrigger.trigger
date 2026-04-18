trigger TaskTrigger on Task__c (before insert, before update, after insert, after update, after delete) {
    
    TaskHandler handler = new TaskHandler();

    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            handler.beforeInsert(Trigger.new);
        } else if (Trigger.isUpdate) {
            handler.beforeUpdate(Trigger.new);
        }
    }/* else if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            handler.afterInsert(Trigger.new);
        } else if (Trigger.isUpdate) {
            handler.afterUpdate(Trigger.new);
        } else if (Trigger.isDelete) {
            handler.afterDelete(Trigger.old);
        }
    }
        */
}