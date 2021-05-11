public with sharing class EscapePodHelper {
  
    public static Event__c findEventForPod(List<Event__c> eventList, Escape_Room_Pod__c pod){

                for(Event__c event: eventList){

                        if(event.Escape_Room_Pod__c == pod.Id){

                                return event;

                        }

                }

                return null;

    }

    public static Warehouse__c findHouseName(Escape_Room_Pod__c home){


        for(Warehouse__c w : [SELECT NAME, Location__c FROM Warehouse__c]){

                    if(w.Id == home.Home_Warehouse__c){

                            return w;

                    }


        }
        return null;

    }



}
