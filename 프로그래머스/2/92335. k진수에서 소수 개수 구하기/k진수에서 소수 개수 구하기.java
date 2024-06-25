/*
    소수를 어디까지 구해야하나?
*/
class Solution {
    
    public int solution(int n, int k) {
        int answer = -1;
        String str = Integer.toString(n, k);
        String[] numbers = str.split("0");
        
        answer = getPrimeNumbers(numbers);
        return answer;
    }
    
    private int getPrimeNumbers(String[] numbers) {
        long max = -1;
        int count = 0;
        for(String number : numbers) {
            if(number.isEmpty() || number.equals("1"))
                continue;
            
            count++;
            long num = Long.parseLong(number);
            for(long l = 2; l <= Math.sqrt(num); l++) {
                if(num % l == 0) {
                    count--;
                    break;
                }
            }
        }
        return count;
    }
}