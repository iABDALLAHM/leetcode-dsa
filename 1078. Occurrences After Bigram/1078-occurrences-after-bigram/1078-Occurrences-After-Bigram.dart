class Solution {
  List<String> findOcurrences(String text, String first, String second) {
      var listOfString = text.split(" ");


  List<String> result = [];

  for (int i = 0; i < listOfString.length-2; i++) {
    if (listOfString[i] == first && listOfString[i + 1] == second) {
      result.add(listOfString[i + 2]);
    }
  }

  print(result);

  return result;
  }
}