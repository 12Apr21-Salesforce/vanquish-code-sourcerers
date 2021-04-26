public class CodingChallenge_RKramer {
	
    /////////////////////////////////////////////////////////////////
    //
    // Name: Coding Challenges
    // Author: Ryan Kramer (Ryan.Kramer@revature.net)
    // Date: 00/00/0000
    // Description: Series of apex methods to demonstrate
    // basic understanding of coding concepts.
    //
    /////////////////////////////////////////////////////////////////

    /*
     * 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0     Output: 0
     * Input: 1    Output: 1
     * Input: 2     Output: 1
     * Input: 10    Output: 55
    */
    
     public static Integer nFibonacci( Integer n ){
		
          if (n <= 1){
             return n;
        } 
        return nFibonacci(n -1) + nFibonacci(n - 2); 
        
    }
    // system.debug(nFibonacci(10));
    
    /*
     * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
    
 public static List<Integer> sortList( List<Integer> intList ) {
	
   		Integer length = intList.size(); // Store the length of the passed in list in a variable
     	Integer tempValue = 0; // creating an integer to store temp rotation values
     
     	for (Integer i = 0; i < length; i++) { // iterate over list starting at first index, as long as it is less than the length, it will increase by 1.
            
            for (Integer j = i + 1; j < length; j++){ // picks the second index and checks it against length, then iterates by one
                
                if(intList[j] < intList[i]){ // If the second iteration index value comes back greater than the first iteration's value...
                
                    tempValue = intList[i]; // Store the lesser value in a temp variable
                    intList[i] = intList[j]; // Then the value of i gets replaced by the value of j
                    intList[j] = tempValue; // The the value of j gets put into the original variable
                }							// Essentially, this is moving the lower number through the list of numbers to be before the higher number.
            }
            
           for (Integer k : intList){ // take the resulting value, iterate through it and store the result in a variable
           System.debug(''+ k);        // print it out // comment this if you want just one result to print
         }
        }
     // System.debug('' + k); // uncommment this if you want just the final result printed
         return intList;         // return the list
    }


// System.debug(Challenge_SortList.sortList(new List<Integer>{2,4,5,1,3,1})); // Execute in Apex Anon Window
   
    /*
     * 3. Return the factorial of n.
     * Test Cases:
     * Input: 0    Output: 1
     * Input: 1    Output: 1
     * Input: 3    Output: 6
    */
    
    public static Integer nFactorial( Integer n) {
		
        if (n == 0){
            return 1;
        } 
        return n * nFactorial(n - 1);
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
            
            // Create a 'Do-While' loop to iterate through and move integers
            do {
                
                nList.add(nList[0]);// Take the value of the first spot in a list and add it to the last position
                nList.remove(0);	// remove the original value from the front of the list
                n--;				// decrement the value by 1
            }
            while (n>0);			// run while n > 0
            
 		return nList;				// return the new list
    } 
		// System.debug(Challenge_RotateLeft.rotateLeftNTimes(new List<Integer>{1,2,3,4,5}, 4));
    
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
        // check the string to see what is passed in
        // if null is passed in, it is not balanced
        // if the string is not even, it is not balanced
        if(null == s || (math.mod(s.length(), 2) == 0)) {
            return false;
        } else {
            List<String> sInts = new List<String>(); 
            for (String l : sInts) { // interate through the array
                // if there are input characters that are not brackets, it is not balanced
                if(!(l == '{' || l == '[' || l == '(' || l == '}' || l == ']' || l == ')')) {
                    return false;
                }
            }
        }
        

		return true;
    }   
    
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
    
    // Retrieve a list of ALL accounts
    // If an account employees <= 1000, size = small
    // If Account Employees >= 1001 && Employees <= 10000, then size = medium
    // If Account Employees >= 10000, then size = large
    // Update size__c
    
    public static void updateAccountSize( ) {
        
        // Retrieve a list of ALL accounts, including Account Name, Employees
        List<Account> listOfAccounts = [SELECT Name, NumberOfEmployees FROM Account ORDER BY NumberOfEmployees ASC];
        
		// iterate through the list of accounts pulled
        for (Account accList : listOfAccounts){ 
            accList.NumberOfEmployees = Account.NumberOfEmployees;
            // check number of employees for size
            if (accList.NumberOfEmployees <= 1000){
                accList.Size__c = 'small';
                update Account.Size__c;
            }
            
        }
    }

    
    /* 
     * 7. Create a method that will find all leads that contain 'ca' in their fields. 
     *     If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */
    
    public static void updateCALeads( ) {

    }
    
    /*
     * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
     */
    public static void closePastDueOpportunities( ) {

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
        return null;
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
        return null;
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
        return null;
    }
    
}