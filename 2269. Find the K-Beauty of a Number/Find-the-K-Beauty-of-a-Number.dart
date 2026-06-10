1class Solution {
2  int divisorSubstrings(int num, int k) {
3  String numString = num.toString();
4  int divisorCount = 0;
5  String newWindow = "";
6
7  for (int i = 0; i <= numString.length - k; i++) {
8    // newWindow = numString.substring(i, i + k);
9
10    print("occer num $i newWindow= $newWindow and i= $i and i+k= ${i + k} ");
11
12    if (int.parse(numString.substring(i, i + k)) != 0) {
13      if (num % int.parse(numString.substring(i, i + k)) == 0) {
14        divisorCount++;
15        print("divisorCount$divisorCount");
16      }
17    }
18  }
19 return divisorCount;
20  }
21}