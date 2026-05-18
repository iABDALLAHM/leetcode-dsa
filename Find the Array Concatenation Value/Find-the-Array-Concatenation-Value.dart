1class Solution {
2  int findTheArrayConcVal(List<int> nums) {
3  List<String> stringList = nums.map((ele) => ele.toString()).toList();
4
5  int pointer1 = 0;
6  int pointer2 = stringList.length - 1;
7  StringBuffer concatenationResult = StringBuffer();
8  int finalResult = 0;
9
10  while (pointer2 > pointer1) {
11    concatenationResult.write(stringList[pointer1] + stringList[pointer2]);
12
13    finalResult += int.parse(concatenationResult.toString());
14
15    concatenationResult.clear();
16
17    pointer2--;
18    pointer1++;
19  }
20
21  if (pointer2 == pointer1) {
22    finalResult += int.parse(stringList[pointer1]);
23    stringList.remove(stringList[pointer1]);
24  }
25
26  return finalResult;
27  }
28}