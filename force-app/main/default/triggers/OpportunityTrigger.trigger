trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, after delete) {
    
    OpportunityHandler handler = new OpportunityHandler();

    if (Trigger.isBefore) {
        if (Trigger.isInsert) {
            handler.beforeInsert(Trigger.new);
        } /*else if (Trigger.isUpdate) {
            handler.beforeUpdate(Trigger.new);
            //handler.beforeUpdate(Trigger.new, Trigger.oldMap);
        }*/
    }/* else if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            handler.afterInsert(Trigger.new);
        } else if (Trigger.isUpdate) {
            handler.afterUpdate(Trigger.new);
            //handler.afterUpdate(Trigger.new, Trigger.oldMap);
        } else if (Trigger.isDelete) {
            handler.afterDelete(Trigger.old);
        }
    }
        */
}