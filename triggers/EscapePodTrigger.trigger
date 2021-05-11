trigger EscapePodTrigger on Escape_Room_Pod__c (before update, after update) {


    for(Escape_Room_Pod__c pod : Trigger.new){

            if(Trigger.isBefore){
                if (Trigger.isUpdate) { // may be superfuloues based on trigger conditions
                    
                

                if(pod.On_Event__c == true){

                    Event__c podEvent = EscapePodHelper.findEventForPod([SELECT Escape_Room_pod__c, Location_Address__c, Name FROM Event__c],pod);

                    if(podEvent != null){

                            if(podEvent.Location_Address__c != NULL){
                                pod.Current_Location__c = podEvent.Location_Address__c; 
                            }else{

                               pod.Current_Location__c = ('at Event: ' + PodEvent.Name);

                            }

                    }else{

                        pod.On_Event__c = false; // search for ware house and set on event flag to false
                        pod.Current_Location__c = EscapePodHelper.findHouseName(pod).Location__c;
                    }

                    
                }else{

                    pod.Current_Location__c = EscapePodHelper.findHouseName(pod).Location__c;
                    
                }
            }
        }
                //*
                List<Event__c> dups = EscapePodEventHelper.Dup_pods([SELECT Escape_Room_Pod__c FROM Event__c],pod);
               

                for(Event__c share : dups){

                        

                        //Share.Escape_Room_Pod__c = EscapePodEventHelper.clonePod(pod).Id; 

                        try {
                            //update share;
                            insert EscapePodEventHelper.clonePod(pod);
                         } catch (DmlException ex) {
                            
                         }
                        
                }

                //*/

    }




}