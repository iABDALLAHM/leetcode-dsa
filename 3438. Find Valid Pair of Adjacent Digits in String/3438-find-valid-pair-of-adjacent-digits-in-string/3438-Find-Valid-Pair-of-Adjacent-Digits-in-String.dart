class Solution {
  String findValidPair(String s) {
  List<String> listOfletters = s.split("");

  Map<String, int> mapOfStringNums = {};

  for (int i = 0; i < listOfletters.length; i++) {
    String currentNum = listOfletters[i];
    if (mapOfStringNums.containsKey(currentNum)) {
      mapOfStringNums[currentNum] = mapOfStringNums[currentNum]! + 1;
    } else {
      mapOfStringNums[currentNum] = 1;
    }
  }
  print(mapOfStringNums);

  String result = "";

  for (int i = 0; i < listOfletters.length-1; i++) {
    if (int.parse(listOfletters[i]) == mapOfStringNums[listOfletters[i]] &&
        int.parse(listOfletters[i + 1]) ==
            mapOfStringNums[listOfletters[i + 1]] &&
        int.parse(listOfletters[i]) != int.parse(listOfletters[i + 1])) {
      result += listOfletters[i];
      result += listOfletters[i + 1];
      break;
    }
  }

  return result;

  }
}