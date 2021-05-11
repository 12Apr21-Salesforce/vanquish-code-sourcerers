public with sharing class EventTriggerBillingHelper {

    public static Decimal bringBillToMin (Event__c original){


        if(original.Billing_Amount__c != NULL){
            original.Billing_Amount__c /= 2;
        }else{

            original.Billing_Amount__c = 250;
        }    
            
        return original.Billing_Amount__c;

    }
    

}
