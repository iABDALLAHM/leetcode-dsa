class Solution {
  String makeFancyString(String s) {

      var listOfChars = s.split("");
  StringBuffer newString = StringBuffer();
  String prevChar = "";

  int counter = 0;
  for (int i = 0; i < listOfChars.length; i++) {
    String currentChar = listOfChars[i];
    if (currentChar == prevChar) {
      counter++;
    } else {
      counter = 1;
      prevChar = currentChar;
    }
    if (counter < 3) {
      newString.write(currentChar);
    }
  }

  return newString.toString();

  }
}