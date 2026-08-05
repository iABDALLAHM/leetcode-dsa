class Solution {
  String greatestLetter(String s) {

  var listOfChars = s.split("");

      Set<String> setOfLowerCaseChars = {};
  Set<String> setOfUpperCaseChars = {};

  for (int i = 0; i < listOfChars.length; i++) {
    String currentChar = listOfChars[i];
    if (currentChar == currentChar.toLowerCase()) {
      setOfLowerCaseChars.add(currentChar);
    } else {
      setOfUpperCaseChars.add(currentChar);
    }
  }
  print(setOfLowerCaseChars);
  print(setOfUpperCaseChars);

  int maxCode = 0;
  String result = "";

  for (var char in setOfLowerCaseChars) {
    if (setOfUpperCaseChars.contains(char.toUpperCase())) {
      int currentCode = char.codeUnitAt(0);

      if (currentCode > maxCode) {
        maxCode = currentCode;
        result = char.toUpperCase();
      }
    }
  }

  return result;

  }
}