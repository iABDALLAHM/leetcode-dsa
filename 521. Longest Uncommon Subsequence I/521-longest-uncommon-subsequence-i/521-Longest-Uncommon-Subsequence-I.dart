class Solution {
  int findLUSlength(String a, String b) {
    if(a==b)return -1;
    if(a.length>b.length){
         return a.length;
    }else{
         return b.length;
    }
  }
}