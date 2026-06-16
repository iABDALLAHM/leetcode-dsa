1class Solution {
2  String convertDateToBinary(String date) {
3
4    var listOfNums = date.split("-");
5    var listOfBinaryNums = [];
6
7  for (int i = 0; i < listOfNums.length; i++) {
8    if (int.tryParse(listOfNums[i]) != null) {
9      listOfBinaryNums.add(int.parse(listOfNums[i]).toRadixString(2));
10    }
11  }
12
13  return  listOfBinaryNums.join("-");
14  }
15}