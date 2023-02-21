import java.util.*;

class Solution {
    public int solution(String t, String p) {
        int answer = 0;
        
        ArrayList<String> arr = new ArrayList<>();
        
            int idx = 0;
            while(idx + p.length() <= t.length()) {
                arr.add(t.substring(idx, idx + p.length()));
                idx++;
            }
            for(String str : arr) {
                if(Long.parseLong(str) <= Long.parseLong(p)) {
                    answer++;
                }
            }
        return answer;
 
    }
}