@isTest
public with sharing class EventHalfoffBillingTrigger_Test {
   
    @TestSetup
    static void makeData(){

        Warehouse__c home = new Warehouse__c(Name = 'street');
        insert home;
        Escape_Room_Pod__c pod = new Escape_Room_Pod__c(Name = 'example pod',Current_Location__c = 'here', Home_Warehouse__c = home.id);
        insert pod; 
        Customer__c cust = new Customer__c(name = 'tester');
        insert cust;
        Event__C eve = new Event__c(Name = 'totality', Customer_test__c = cust.id, Escape_Room_Pod__c = pod.id);
        //insert eve;
    }

    @isTest
    private static void TestBilling(){


        Test.startTest();
        system.debug('ahoy');



        Test.stopTest();

    }




}
