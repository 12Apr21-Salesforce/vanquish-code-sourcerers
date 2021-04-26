// Name: Coding Challenges - Natalie
    // Author: Natalie Clark (moonshine.machiavelli@gmail.com)
    // Date: 04/23/2021
    // Description: Series of apex methods to demonstrate
    // basic understanding of coding concepts.

public class P0BNatalie {
    
    public static Integer nFibonacci( Integer n ){        
            if (n==0){
                return 0;
            }
            else if (n==1){
                return 1;
            }
        else return nFibonacci(n-1) + nFibonacci(n-2);

    }//recursion will be easiest, n=0, n=1

    public static List<Integer> sortList( List<Integer> intList ) {
        Integer listSize = intList.size();
        // List<Integer> temp = new List<Integer>();

        for (Integer i = 0; i<listSize;i++){
            Integer start = intList[i];
            Integer replaced = i;
            for (Integer j=i+1;j<listSize;j++){
                if (intList[j] < start){
                    start = intList[j];
                    replaced = j;
                    Integer holder = intList[i];
                    intList[i] = start;
                    intList[replaced] = holder;
                }
            }
 
        }
        return intList;
    }//System.debug(P0BNatalie.sortList(new List<Integer>{5,4,3,2,1}));

    public static Integer nFactorial( Integer n) {
        if(n==0){
            return 1;
        }
        else return (n*nFactorial(n-1));
    }//more recursion
/*
    integer j = 1;
    for(integer i=0;i<n;i++){
        j *= (i+1);
    }
*/
    

    public static List<Integer> rotateLeftNTimes( List<Integer> nList, Integer n) {

        while (n>0){
            nList.add(nList[0]);
            nList.remove(0);
            n--;
        }
        return nList;
    }
/*
    public static Boolean bracketsAreBalanced( String s ) {
        List<String> overview = s.deleteWhitespace().split('');
        Boolean balance;
        Integer size = overview.size();
        List<String> left = new List<String>{'(','[','{'};
        List<String> right = new List<String>{')',']','}'};

        for(Integer i=0;i<=size/2;i++){
            if(left.contains(overview[i])==true){
                if(){
                   
                }
                
            }
        }
    }//normalizeSpace() and split()

    public static void updateAccountSize( ) {

    }

    public static void updateCALeads( ) {

    }

    public static void closePastDueOpportunities( ) {

    }
*/

/*
    public static Boolean questionMarks(String str) {
        Boolean result = false;
        // List<String> temp = new List<String>();
        String a,b,str2;
        Integer x,y,n;

        str2 = str.replace('?','.');
        str = str2.replaceAll('[a-zA-Z]','');
        List<String> stringList = str.split('...');
        // str.replaceAll('[?]','');



        for(Integer i=0;i<stringList.size()-1;i++){
            // Integer a = Integer.valueOf(stringList[i].charAt(stringList[i].length()-1));
            // Integer b = Integer.valueOf(stringList[i+1].charAt(0));
            a = stringList[i];
            b = stringList[i+1];
            system.debug(a);
            system.debug(b);
            system.debug(a.right(0).isNumeric());
            system.debug(b.left(0).isNumeric());
            if(a.right(1).isNumeric()==true && b.left(1).isNumeric()==true){
                x = a.charAt(0);
                y = b.charAt(0);
                n = x + y;
                system.debug(x);
                system.debug(y);
                system.debug(n);
               if(n>=10){result = true;}
            }
            
        }
        return result;            
    }*/

/*
    public static Integer multipleCounter(Integer firstNum, Integer secondNum, Integer n) {
        Integer marker = 0;
        Integer counter = 0;

        if(firstNum>secondNum && secondNum>0){
            marker = firstNum+1;

            while(marker>secondNum){
                marker -= n;
                counter++;
            }
        }
        else if (secondNum>firstNum && firstNum>0){
            marker = secondNum+1;

            while(marker>firstNum){
                marker -= n;
                counter++;
            }
        }

        return counter;
    }//need to figure out how to make marker start at first iteration of n in the range
*/

/*
    public static Integer palindromicity(String str) {
        Integer result = 0;
        
        List<String> theWord = str.split('');
        // String backwards = str.reverse();
        for(Integer i=0; i<str.length()/2;i++){
            if(theWord[i] != theWord[str.length()-1-i]){
                return result;
            }
        }
        return result;
    }//
*/


}