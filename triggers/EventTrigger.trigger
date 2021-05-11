trigger EventTrigger on Event__c (before insert, before update) {
        //*
               if(Trigger.isBefore){
                        for(Event__c billCheck: Trigger.new){
        
                                if(Trigger.isInsert){   
        
                                        billCheck.Billing_Amount__c = EventTriggerBillingHelper.bringBillToMin(billCheck);
        
                                }else{
        
                                        billCheck.Billing_Amount__c = EventTriggerBillingHelper.bringBillToMin(billCheck);        
                                                        
                                }
                                        
        
        
                }
        
                }
        //*/
}