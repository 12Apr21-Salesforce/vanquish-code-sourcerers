

/*
    Lead off your class with the following comment, filled out with 
    your information.
*/
    /////////////////////////////////////////////////////////////////
    //
    // Name: Coding Challenges
    // Author: Alden Towler (alden.towler@revature.net)
    // Date: 04/23/2021
    // Description: Series of apex methods to demonstrate
    // basic understanding of coding concepts.
    //
    /////////////////////////////////////////////////////////////////
/*
    Write the following methods in a class called P0B. 
    Note: The method signatures are given.
*/
  
  public class alden_towler_CodingChallenge{
  
    

    public static Integer nFibonacci( Integer n ){
              /*
                * 1. Return the nth Fibonacci number
                * Test Cases:
                * Input: 0     Output: 0//
                * Input: 1    Output: 1
                * Input: 2     Output: 1
                * Input: 10    Output: 55
              */


       //* 
          if(n == 0)
                  return 0;
        
          if(n == 1)
                  return 1;

          return nFibonacci(n-1) + nFibonacci(n-2);
          
        //*/

    }

  

  
    public static List<Integer> sortList( List<Integer> intList ) {

   /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
    Integer piv_val = 0;
    Integer piv_loc = 0;
    Integer wiggle = 0;
    List<integer> piv_list = new List<integer>();
    List<integer> lone = new List<integer>();
    
    
  
    wiggle = intList.get(0);
    
     if(wiggle < 0){

        piv_loc = (intList.size()/2) + 1;
        intList.set(0, intList.get(0) * -1);

      }else{
        piv_loc = (intList.size()/2);
      }

      lone = intlist.clone();
      piv_val = intList.get(piv_loc);
      piv_list.add(piv_val);
      intList.remove(piv_loc);
    
  
      for(Integer x : intList){

          if(x <= piv_val){

              piv_list.add(0, x);

          }else if(x > piv_val){

              piv_list.add(x);

          }
      }

      lone.sort();
    if(piv_list.equals(lone)){
    
          
          return piv_list;
        
      }else{
          if(wiggle > 0){
            piv_list.set(0, piv_list.get(0) * -1);
        }
        return sortList(piv_list);
          /*
         return piv_list;
      
        //*/
      }
      
      


    }

    /*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0    Output: 1
     * Input: 1    Output: 1
     * Input: 3    Output: 6
    */
    public static Integer nFactorial( Integer n) {

        if(n == 0)
            return 1;

        return n * nFactorial(n-1);


    }

    /*
     * 4. Rotate left
     * Given a list, list, and an integer, n, rotate the values in list left n times and return list
     * Test Cases:
     * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
    */
    public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n) {

        for (Integer i = 0; i <= n; i++) {

              nList.add(nList.get(0));
              nList.remove(0);
     
        }
      return nList;
    }

    /*
     * 5. Balanced Brackets
     * A bracket is any one of the following: (, ), {, }, [, or ]
     * 
     * The following are balanced brackets:
     *    ( )
     *    ( ) ( )
     *    ( ( ) )
     *    ( { [ ] } )
     *
     * The following are NOT balanced brackets:
     *   (
     *   )
     *   ( ( )
     *   ( [ ) ]
     *
     * Return true if balanced
     * Return false if not balanced
    */
    public static Boolean bracketsAreBalanced( String s ) {

        List<String> stack = new List<string>();
        stack.add('z'); // to allow stack to have insertion at top;

        for(String x : s.split('')){
          
          
                  switch on x {
                    when '(' 
                    {		
                        stack.add(0,'a');
                    }	
                    when '{' {		
                        stack.add(0,'b');

                    }
                    when '[' {
                        stack.add(0,'c');
                    }
                    when ')' {		  

                        if(stack.get(0).equals('a'))
                                    stack.remove(0);
                    }
                    when '}' {		  
                      if(stack.get(0).equals('b'))
                                  stack.remove(0);
                    }
                    when ']' {		  
                        if(stack.get(0).equals('c'))
                                  stack.remove(0);
                    }
                }
        }
        if(stack.size() > 1){

              return false;

        }else{

            return true;

        }

    }

    /* You should NOT be submitting answers that you find online. You will be expected to be able to defend any of these solutions without notice. */

    /*
     * 6. Create a method that retrieves a list of all accounts and updates those accounts.
     *      Create a custom field on the Account standard object called Size__c that will be a 
     * picklist containing small/medium/large.
     *     Create a method that retrieves a list of all accounts. 
     *         - If an account has between 1-1000 employees then it is classified as small.
     *         - If an account has between 1001-10000 employees it is classified as medium.
    *         - If an account has more than 10000 employees it is classified as large.
     *     Update the Size__c field on each account to reflect the amount of employees in the Account.
    */
    public static void updateAccountSize( ) {

      List<Account> ac_list = [SELECT NumberOfEmployees, Size__c FROM Account];

      for(Account x : ac_list){

          if(x.NumberOfEmployees <= 1000 && x.NumberOfEmployees > 1){

              x.Size__c = 'small';

          }else if (x.NumberOfEmployees <= 10000){

            
            x.Size__c = 'medium';

          }else{

            
            x.Size__c = 'large';

          }

      }
      update ac_list;

    }

    /* 
     * 7. Create a method that will find all leads that contain 'ca' in their fields. 
     *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */
    public static void updateCALeads( ) {

      List<Lead> leed_list = [SELECT StateCode FROM lead];

          for(Lead x : leed_list){

                
                if(x.StateCode == 'CA'){

                    x.Status = 'Closed-Not Converted';
                    x.Description = 'We are no longer doing buisness in California';

                }



          }

        update leed_list;
          
    }


    /*
     * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
     */
    public static void closePastDueOpportunities( ) {

      //Opportunity<Lead> op_list = [SELECT CloseDate,StageName FROM Opportunity];
      for(list<Opportunity> op_list : [SELECT CloseDate,StageName FROM Opportunity]){
      

                for(Opportunity x : op_list){

                  if(x.CloseDate.daysBetween(Date.today()) < 0){

                      if(!x.StageName.equals('Closed Won')){

                          x.StageName = 'Closed Lost';

                      }
                  }

                }
        update op_list;
      }
      
    }

    /*  
     *  9. questionMarks declares the str parameter, which can have numbers, letters, and question marks.
     *  It will then check str to see if there are exactly 3 question marks between every pair of two numbers that add up to 10.
     *   If there are, questionMarks returns true. In any other case (including the case where str doesn't contain any two numbers that sum to 10),
     *   questionMarks will return false.
     *
     *   For example, when given the String "arrb6???4b5???ef5", questionMarks returns true because there are 3 question marks between 6 and 4 and
     *   another 3 question marks between 5 and 5 (and both pairs of numbers sum to 10).
     *
     *  Other examples:
     *      str = "aa6?9" => questionMarks returns false
     *      str = "a?7??s?3r1?????5" => questionMarks returns true because there's at least one pair of numbers that sum to 10 (7 and 3) and 3
     *          question marks between those numbers
    */
    public static Boolean questionMarks(String str) {

      Integer Quest = 98;
      Integer Firstnum;
      Boolean Flag = false;

      for(String x : str.split('')){

        if(x.equals('?')){

          if(Quest == 3)
                Quest = 0;
              
          Quest++;
          
        }
    
        if(x.isNumeric()){
            if(Firstnum == 98){
              
              Firstnum = Integer.valueOf(x);  
              Quest = 0;
            }else{
        
                if(Firstnum + Integer.valueOf(x) == 10){
                      if(Quest == 3){
                          Flag = true;
                      }else{
                        Firstnum = Integer.valueOf(x);    
                      }
                }else{
                        Firstnum = Integer.valueOf(x);    
                }
            }   
        }
    }
    /// edge case of str = '%4???56%' ie do numbers count as any character that can go between two numbers
    return Flag;
  }

    /*
     *   10. multipleCounter returns the number of multiples of the Integer n that exist in the inclusive range [firstNum, secondNum].
     *   You can assume that firstNum < secondNum in all cases.
     *
     *   Examples:
     *       firstNum = 1, secondNum = 6, n = 5 => multipleCounter returns 1 because there is one multiple of 5 in the range [1, 6] (which is 5)
     *       firstNum = 2, secondNum = 12, n = 2 => multipleCounter returns 6 because there are 6 multiples of 2 in the range [2, 12] 
     *          (which are 2, 4, 6, 8, 10, and 12)
    */
    public static Integer multipleCounter(Integer firstNum, Integer secondNum, Integer n) {
    
        Integer total_mults = 0;
    
      for (Integer i = firstNum; i <= secondNum; i++) {
        
            if(Math.mod(i, n) == 0)
                total_mults++;
      }
    
      return total_mults;
    }
    
    /*
     *   11. palindromicity declares a parameter str and returns the degree of palindromicity for that string - i.e. the smallest possible number
     *   of palindromes needed to construct the string.
     *
     *   Examples:
     *      str = "a" => palindromicity returns 1 because "a" backwards is "a"
     *      str = "b3b" => palindromicity returns 1 because "b3b" backwards is "b3b"
     *
     *      str = "ty" => palindromicity returns 2 because str can be broken into two 1 letter palindromes ("t" and "y")
     *      str = "343hmh" => palindromicity returns 2 because str can be broken into two 3 letter palindromes ("343" and "hmh")
     *
     *      str = "iotoihannahracecar" => palindromicity returns 3 because str can be broken into 3 palindromes ("iotoi", "hannah", and "racecar")
     *      str = "abcbabcbabab" => 2. pretty sure it's greedy
     *      str = "abcbabcbababa" => 3. both ways: "abcbabcba" "bab" "a" or "ababa" "bcbabcb" "a"
     *      str = "ababbbabbababa" => 4. NOT GREEDY. 'a' 'babbbab' 'b' 'ababa' is the answer. 
     *                                    'aba' 'bbb' 'abba' 'b' 'aba' is the greedy answer.
    */
    public static Integer palindromicity(String str) {

      Integer drom_num = 0;
      List<String> stack = new List<String>();


      for(String x : str.split('')){

            stack.add(x);
            if(stack.size() > 2){
                if(stack[stack.size()-3].equals(x)){

                    stack.remove(stack.size()-3);
                    stack.remove(stack.size()-1);
                    if(stack.size() == 1){
                      
                        drom_num++;
                    
                    }else if(stack.size() == 2 && stack.get(stack.size()-2).equals(stack.size()-1)){

                        
                      drom_num++;

                    }
                }


            }
      
      
      }

      return drom_num;

    }



  }    