public class SampathPOB{
	/* 1. Return the nth Fibonacci number
     * Test Cases:
     * Input: 0     Output: 0
     * Input: 1    Output: 1
     * Input: 2     Output: 1
     * Input: 10    Output: 55  
*/
    public static Integer nFibonacci( Integer n ){
        Integer fibp =0;
        Integer fib = 1;
        if (n==0) {
            System.debug('Fibonacci series for '+n+' is '+n);
        } else if (n<0){
            System.debug(n+'is a negative no.');
        }else {
    //    	 System.debug(fibp+' '+ fib);
          //   System.debug(fib+' ');
            for (integer j=1; j<n;j++){
            		fib = fib+fibp;
            		fibp = fib-fibp;
      //             System.debug(fib+' ');  
                }
            if (n==1){
                System.debug(n+'st fibonacci number is '+fib);
            } else if (n==2){
                System.debug(n+'nd fibonacci number is '+fib);
            }else if (n==3){
                System.debug(n+'rd fibonacci number is '+fib);
            }else {
                System.debug(n+'th fibonacci number is '+fib);
            }
        }
        return fib;
    }

   /*  * 2. Sort a list of integers.
     * Test Cases:
     * Input: [2,4,5,1,3,1]     Output: [1,1,2,3,4,5]
     * Input: [5,4,3,2,1]     Output: [1,2,3,4,5]
     *
     * Don't use the sort() method... that would be lame.
    */
     
    public static List<Integer> sortList( List<Integer> intList ) {
        System.debug('Given list is: '+intList);
        Integer len = intList.size();
        Integer temp;
        List<Integer> newList = new List<Integer>();
        
        for (Integer i=0; i<len; i++){
        	for(Integer j=i+1; j<len; j++){
           		if(intList[i] > intList[j]){
                    temp = intList[j];
                    intList[j]=intList[i];
                    intList[i]=temp;
                }else {
                    temp = intList[i];
                }
       		}
            temp=intList[i];
            newList.add(temp);
        }
        System.debug(newList);
        return newList;
    }  

/*   3. Return the factorial of n.
     		* Test Cases:
     		* Input: 0    Output: 1
     		* Input: 1    Output: 1
     		* Input: 3    Output: 6
*/
    
    public static Integer nFactorial( Integer n) {
        integer fact = 1;
        If (n==0) {
            System.debug('Factorial of '+n+' is : '+fact);
            return 1;
        } else if (n<1) {
            System.debug('Invalid no for a factorial.');
        } else {
            for (integer i=1; i<=n; i++){
                fact = fact*i;
            }
            System.debug('Factorial of '+n+' is :'+fact);
        }
        return fact;
    }

    /*	4. Rotate left
     		* Given a list, list, and an integer, n, rotate the values in list left n times and return list
     		* Test Cases:
     		* Input: [1,2,3,4,5], 1    Output: [2,3,4,5,1]
     		* Input: [1,2,3,4,5], 6    Output: [2,3,4,5,1]
     		* Input: [1,2,3,4,5], 3    Output: [4,5,1,2,3]
 	*/
  
    public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n) {

        Integer len = nList.size();
        if (n>len){
        	n=n-len; // to avoid repitiion of for loop if n is more than length of the list.
        }
		System.debug('Initial list of array is '+nList);
      
      //for loop for n number of rotations and storing the 1st digit in a variable "last"
        for(integer i =1; i<=n; i++){
        	Integer last = nList[0];   
			
			//moving every digit one-left and the first item added last to the list.
			for(integer j=0; j<len-1; j++) {
        		nList[j]=nList[j+1];
            }
            nList[len-1]=last;
        }  
        System.debug('After '+n+' rotations left, the list is: '+nList);
        return nList;
    }
 
/*     	* 5. Balanced Brackets
     	* A bracket is any one of the following: (, ), {, }, [, or ]
     	* The following are balanced brackets:
     	*    ( )
     	*    ( ) ( )
     	*    ( ( ) )
     	*    ( { [ ] } )
		*    ([{)}}
     	* The following are NOT balanced brackets:
     	*  (
     	*  )
     	*  ( ( )
     	*  ( [ ) ]
     	* Return true if balanced
     	* Return false if not balanced
    */
    
    public static Boolean bracketsAreBalanced( String s ) {
        Boolean balancedBrackets=true;
        Integer openB = s.countMatches('(');
  		Integer closedB = s.countMatches(')');
        Integer openCB = s.countMatches('{');
        Integer closedCB = s.countMatches('}');
        Integer openSB = s.countMatches('[');
        Integer closedSB = s.countMatches(']');
        List<String> openBrackets = new List<String>();      
        Integer len = s.length();
 		Integer qcount = 0;
        System.debug('Initial string'+s);
        // splitting on empty gives you an array of the string's "chars"
		List<String> brackets= s.split('');
 //       System.debug(brackets);
		
        if((math.mod(len,2)!=0) || (openB!=closedB) || (openCB!=closedCB) || (openSB!=closedSB)){ // to check the len of string is even or odd
        	System.debug('Brackets are not balanced.');
            balancedBrackets=false;
        } else {
        	for(integer i=0; i<len; i++){
                if((brackets[i]=='{') || (brackets[i]=='(') || (brackets[i]=='[')){
               		openBrackets.add(brackets[i]);
           		}
                qcount++;
                System.debug(openBrackets+' '+qcount);
        	}
            
            qcount=qcount-2;
            System.debug('index of last open bracket is: '+qcount);
            if((brackets[qcount+1] == '}') || (brackets[qcount+1] == ')') || (brackets[qcount+1] == ']')){
                balancedBrackets=true; 
                System.debug('Brackets are Balanced');
            }             
        }
        
        return balancedBrackets;
    }
 
/*   6. Create a method that retrieves a list of all accounts and updates those accounts.
     *	Create a custom field on the Account standard object called Size__c that will be a 
     * 	picklist containing small/medium/large.
     *  Create a method that retrieves a list of all accounts. 
     *         - If an account has between 1-1000 employees then it is classified as small.
     *         - If an account has between 1001-10000 employees it is classified as medium.
     *         - If an account has more than 10000 employees it is classified as large.
     *     Update the Size__c field on each account to reflect the amount of employees in the Account.
    */
    
	public static void updateAccountSize( ) {
		List<Account> acc = [select Name, NumberOfEmployees from Account];
        System.debug('No of records in Accounts object are: '+acc.size());
        for(Account act : acc){
            if((act.NumberOfEmployees > 0) && (act.NumberOfEmployees < 1001)){
                act.size__c = 'Small';
                System.debug('No of employees are more than 1 '+act.NumberOfEmployees);
            } 
            else if (act.NumberOfEmployees < 2001){
                act.size__c = 'Medium';
                System.debug('No of employees are more than 1000 '+act.NumberOfEmployees);
            }else if (act.NumberOfEmployees > 2000){
                System.debug('No of employees are more than 2000 '+act.NumberOfEmployees);
                act.size__c = 'Large'; 
            }
        }
        update acc;
    }

/*   7. Create a method that will find all leads that contain 'ca' in their fields. 
     * If a lead is located in California(CA), change their Lead Status field to 'Closed - Not 
     * Converted' and their description should display the message, "We are no longer doing 
     * business in California."
     */ 
 
    public static void updateCALeads( ) {
		List<Lead> caLeads = [Select State, StateCode, Status, Description from Lead where (State='California' OR StateCode = 'CA')];
        for (Lead sLead : caLeads){
            if ((sLead.State =='California') || (sLead.StateCode=='CA')){
                sLead.Status = 'Closed - Not Converted';
                sLead.Description = 'We are no longer doing business in California.';
            }
        	update sLead;    
        }
        
    }

/*   * 8. Create a method that will find all Opportunities which have already passed their Close Date 
     * and have a Stage field that is not 'Closed Won'. Since they have passed their Close Date and 
     * they are not marked as 'Closed Won', they should be marked as 'Closed Lost'.
*/    
   
    public static void closePastDueOpportunities( ) {
		List<Opportunity> oppList = [Select StageName from Opportunity
                                     where (StageName not in ('Closed Won', 'Closed Lost') 
									 AND CloseDate < 2021-04-23)];
    
        for(Opportunity oppL : oppList){
            oppL.StageName = 'Closed Lost';
            update oppL;
        }
    }
  
/*   
	9. questionMarks declares the str parameter, which can have numbers, letters, and question marks.
     * It will then check str to see if there are exactly 3 question marks between every pair of two numbers 
     * that add up to 10. If there are, questionMarks returns true. In any other case (including the 
     * case where str doesn't contain any two numbers that sum to 10), questionMarks will return false.
     *
     *For example, when given the String "arrb6???4b5???ef5", questionMarks returns true because there are 
     3 question marks between 6 and 4 and another 3 question marks between 5 and 5 
        (and both pairs of numbers sum to 10).
     *
     *  Other examples:
     *      str = "aa6?9" => questionMarks returns false
     *      str = "a?7??s?3r1?????5" => questionMarks returns true because there's at least one pair of numbers 
     * that sum to 10 (7 and 3) and 3  question marks between those numbers
*/
    public static Boolean questionMarks(String str) {

        Boolean questionMarks=false;
        Integer len = str.length();
        String qm = '?'; // to check the count of ?
        Integer qCount = 0;
        Integer qbCount = 0;
        Integer nCount = 0;
        List<Integer> intIndexes = new List<Integer>();  // to check the index value of intergers
        List<Integer> intVals = new List<Integer>();  // to check the value of intergers
        Integer intCount=0;
        
        // splitting on empty gives you an array of the string's "chars"
        List<String> chars= str.split('');
        
        Boolean q = str.isAlpha(); //to check whether the string is alphabetic only
        if((len<5)||(q==true)){ // to check the len of string is 5 or above
            System.debug('This string \''+str+'\' is not considered.');
            questionMarks=false;
            System.debug('questionMarks is :'+questionMarks);
        
        } else {
        // counting the no of ?
            for(integer i=0; i<len; i++){
                if (chars[i]==qm){
                    qcount++;
                }
                if (chars[i].isNumeric()){
                    intVals.add(Integer.valueOf(chars[i])); // storing the integer values
                    intIndexes.add(chars.indexOf(chars[i])); // storing the indexes of integer values
                    //System.debug('index values of '+chars[i]+' '+chars.indexOf(chars[i]));
                    nCount++;  // to check the no of numeric values
                }
            }
            System.debug('count of questionmarks '+qCount);
            System.debug('count of numeric values '+nCount);
            System.debug('Integer are '+intVals);
            System.debug('index values of integers '+intIndexes);
            if((qCount>=3) && (nCount>1)){
                for(integer i=0; i<(intIndexes.size()-1); i++){
                    qbCount=0;
                    if (intVals[i]+intVals[i+1]==10){
                        System.debug('Sum of 2 digits is '+(intVals[i]+intVals[i+1]));
                        for(integer j=intIndexes[i]; j<intIndexes[i+1]; j++){
                                //System.debug('index value of 2nd integer is '+intIndexes[i]);
                                //	System.debug('for loop in Indexes '+i+' '+j);
                            //System.debug('question mark with i '+chars[j]+1]);
                            //System.debug('question mark with j '+chars[intIndexes[j]]);
                            if (chars[j]==qm){
                                // System.debug('question mark '+chars[j]+1);
                                qbCount++;
                            }
                        }System.debug('No of Qs in iteration '+(i+1)+' between nos is :'+qbCount);
                        
                        if (qbCount>=3){
                                questionMarks = true;
                            break;
                        } else questionMarks = false;
                            
                        //qbCount=0;
                        
                    } else questionMarks = false;
                }
            } else questionMarks = false;
        }
        System.debug('questionMarks is :'+questionMarks);
        return questionMarks;
    }

 /*
 * 10. multipleCounter returns the number of multiples of the Integer n that exist in the inclusive range 
 * [firstNum, secondNum]. You can assume that firstNum < secondNum in all cases.
 * Examples:
 *firstNum = 1, secondNum = 6, n = 5 => multipleCounter returns 1 because there is one multiple of 5 
        in the range [1, 6] (which is 5)
 *firstNum = 2, secondNum = 12, n = 2 => multipleCounter returns 6 because there are 6 multiples of 2 
        in the range [2, 12]  (which are 2, 4, 6, 8, 10, and 12)
 */   
    public static Integer multipleCounter(Integer firstNum, Integer secondNum, Integer n) {
   		Integer x = secondNum-firstNum; //no of times to execute the for loop
        Integer fNum = firstNum;
        List<Integer> multiples = new List<Integer>();
        if ((n > secondNum) || (n==0)){
            System.debug('there is no multiplecounter to '+n+' for the range '+firstNum+' to '+secondNum+'.');
        } else {
            for(Integer i =0; i<=x ; i++){
                if (math.mod(fNum,n)==0){  //checking for multiples from first number
                	multiples.add(fNum);
            	}
                fNum++;
            }
            System.debug('Multiplecounter of '+n+' is '+multiples.size()+' in the range '+firstNum+' and '+secondNum+'.');
            System.debug('Multiples of '+n+' in the range '+firstNum+' and '+secondNum+' is '+multiples);
        }
	    return multiples.size();
    }

/* 11. palindromicity declares a parameter str and returns the degree of palindromicity for that string - i.e. the smallest possible number
     *   of palindromes needed to construct the string.
     *
     *   Examples:
     *      str = "a" => palindromicity returns 1 because "a" backwards is "a"
     *      str = "b3b" => palindromicity returns 1 because "b3b" backwards is "b3b"
     *
     *str = "ty" => palindromicity returns 2 because str can be broken into two 1 letter palindromes ("t" and "y")
*str = "343hmh" => palindromicity returns 2 because str can be broken into two 3 letter palindromes ("343" and "hmh")
     *
     *      str = "iotoihannahracecar" => palindromicity returns 3 because str can be broken into 3 palindromes 
     *      ("iotoi", "hannah", and "racecar")
     *      str = "abcbabcbabab" => 2. pretty sure it's greedy
     *      str = "abcbabcbababa" => 3. both ways: "abcbabcba" "bab" "a" or "ababa" "bcbabcb" "a"
     *      str = "ababbbabbababa" => 4. NOT GREEDY. 'a' 'babbbab' 'b' 'ababa' is the answer. 
     *                                    'aba' 'bbb' 'abba' 'b' 'aba' is the greedy answer.
  
    public static Integer palindromicity(String str) {
    
    
    } 
*/
}