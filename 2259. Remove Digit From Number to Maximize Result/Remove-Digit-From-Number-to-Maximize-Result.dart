1class Solution {
2  String removeDigit(String number, String digit) {
3    
4  var listOfNums = [];
5
6  for (int i = 0; i < number.length; i++) {
7    if (number[i] == digit) {
8      listOfNums.add(number.substring(0, i) + number.substring(i + 1));
9    }
10  }
11
12  BigInt maxNum = BigInt.parse(listOfNums[0]);
13
14  for (int i = 0; i < listOfNums.length; i++) {
15    if (BigInt.parse(listOfNums[i]) > maxNum) {
16      maxNum = BigInt.parse(listOfNums[i]);
17    }
18  }
19
20  print(listOfNums);
21  return maxNum.toString();
22  }
23}