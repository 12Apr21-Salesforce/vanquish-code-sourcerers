@isTest
public with sharing class EscapePodTrigger_test {
    
    @TestSetup
    static void makeData(){

        Warehouse__c home = new Warehouse__c(Name = 'street');
        insert home;
        Escape_Room_Pod__c pod = new Escape_Room_Pod__c(Name = 'example pod',Current_Location__c = 'here', Home_Warehouse__c = home.id);
        insert pod; 
        
    }


    @istest
    private static void onEventFlipper(){

            Test.startTest();

            pod.On_Event__c = false;

            Test.stopTest();



    }
}
