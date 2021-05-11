public with sharing class EscapePodEventHelper {
  
    public static List<Event__c> Dup_pods(List<Event__c> eventList,Escape_Room_Pod__c pod){

        List<Event__c> sharedPods = new List<Event__c>();

        for(Event__c event: eventList){

            if(event.Escape_Room_Pod__c == pod.Id){

                    sharedPods.add(event);

            }

        }

        return sharedPods;

    }

    public static Escape_Room_Pod__c clonePod (Escape_Room_Pod__c pod){
    
        Escape_Room_Pod__c  pod2 = pod.clone(false,true,true,true);
        pod2.Name = (pod2.Name + ' Duplicate');
    
        return pod2;
    
    
    }



}
