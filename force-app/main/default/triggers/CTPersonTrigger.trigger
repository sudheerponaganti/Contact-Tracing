trigger CTPersonTrigger on Person__c (before insert,after insert, before update, after update, before delete, after delete, after undelete) {


    switch on Trigger.operationType {
        when  BEFORE_INSERT{
            //todo : update health status to Green
            //todo : generate unique token for the person record
            CTPersonTriggerHandler.beforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE{
            //todo : update  status update date  when ever health statius updates
            CTPersonTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldMap);
        }

        when AFTER_UPDATE {
       
            CTPersonTriggerHandler.afterUpdate(Trigger.new, Trigger.oldMap);

        }
    }
}