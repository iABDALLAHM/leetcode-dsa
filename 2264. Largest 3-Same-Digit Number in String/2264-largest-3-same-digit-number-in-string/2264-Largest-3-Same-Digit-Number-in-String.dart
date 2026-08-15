class Solution {
  String largestGoodInteger(String num) {
      List<String> listOfMaxNums = [
    "999",
    "888",
    "777",
    "666",
    "555",
    "444",
    "333",
    "222",
    "111",
    "000",
  ];
  String maxNum = "0";
  for (int i = 0; i < num.length - 2; i++) {
    String currentNum = num.substring(i, i + 3);
    if (listOfMaxNums.contains(currentNum)) {
      if (int.parse(currentNum) >= int.parse(maxNum)) {
        maxNum = currentNum;
      }
    }
  }

  if (!listOfMaxNums.contains(maxNum)) {
    maxNum = "";
  } 
    return maxNum;
  }
}