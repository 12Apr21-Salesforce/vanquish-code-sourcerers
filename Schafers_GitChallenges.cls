//Lead off your class with the following comment, filled out with 
//your information.
/////////////////////////////////////////////////////////////////
//
// Name: Coding Challenges
// Author: Name (Email)
// Date: 00/00/0000
// Description: Series of apex methods to demonstrate
// basic understanding of coding concepts.
//
/////////////////////////////////////////////////////////////////
//Write the following methods in a class called P0B. 
//Note: The method signatures are given.
// test edit

public class Schafers_GitChallenges{

    //1. Return the nth Fibonacci number
       
    public static Integer nFibonacci( Integer n ){
        //fib1 = 0;
        //fib2 = 1;
        //fib3 = fib1 + fib2;
        //n = fib3;     
        
        if (n == 0){
            return 0;
        }
        else if (n == 1){
            return 1;
        }
        else return nFibonacci(n-1) + nFibonacci(n-2);

    }

    system.debug(nFibonacci(5));
    

    /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
      
    //List<Integer> intList = new List<Integer>{5,3,2,6,2,4,1};


        
    public static List<Integer> sortList( List<Integer> intList ) {
        
        Integer l = intList.size(); // Length of list
        Integer t = 0; // Temp Value

        for ( Integer i = 0 ; i < l ; i++) {
            
            for ( Integer j = i + 1; j <= l - 1 ; j++) {
                
                if (intList[i] > intList[j]) {
                    t = intList[i];
                    intList[i] = intList[j];
                    intList[j]  = t;
                }

            }
            for ( Integer k : intList){
                System.debug(''+ k);
    
            }
        
        //system.debug(intList);
        //return intList;
        }
        return intList;
    }

    System.debug(Schafers_GitChallenges.sortList(new List<Integer>{2,4,5,6,3,1}));



    /*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0    Output: 1
     * Input: 1    Output: 1
     * Input: 3    Output: 6
    */
    // A factorial is a non-negative number, minus itself then mutiplical of its total.
    // For example factorial of 5 is 5*4*3*2*1 = 120

    public static Integer nFactorial( Integer n) {

        if (n == 0) // If number is less than 1, make it 1.
            return 1;
  
        return n * factorial(n - 1); // takes number, lowers it by one, and mutiplies.
    }
    System.System.debug(nFactorial(5))



    /*
     * 4. Rotate left
     * Given a list, list, and an integer, n, rotate the values in list left n times and return list
     * Test Cases:
     * Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
     * Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
    */

    List<Integer> nList = new List<Integer>{1,2,3,4,5};
    
    public static List<Integer> rotateListLeft( List<Integer> nList, Integer n) {

        Integer t = 0; // Temp Value 

        for ( Integer i = 0 ; i < n ; i++) { //n = number of movements left
                
            for ( Integer j = 0; j <= nList.size(); j++) {
                
                t = nList[i];
                nList[i] = nList[j];
                nList[j]  = t;
            }
                

        //System.debug(nList)

        return rotateListLeft;
    }

    System.debug(rotateListLeft(nlist, 1) // 1 movement left







    /*
     * 5. Balanced Brackets
     * A bracket is any one of the following: (, ), {, }, [, or ]
     * 
     * The following are balanced brackets:
     *    ( )
     *    ( ) ( )
     *    ( ( ) )
     *    ( { [ ] } )
     *
     * The following are NOT balanced brackets:
     *   (
     *   )
     *   ( ( )
     *   ( [ ) ]
     *
     * Return true if balanced
     * Return false if not balanced
    */
    public static Boolean bracketsAreBalanced( String s ) {


        
        return NULL;
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
        return NULL;
    }









    /* 
     * 7. Create a method that will find all leads that contain 'ca' in their fields. 
     *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */
    public static void updateCALeads( ) {
        return NULL;
    }











    /*
     * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
     */
    public static void closePastDueOpportunities( ) {
        return NULL;
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
        return NULL;
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
        return NULL;
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
        return NULL;
    }

}