class Solution {
  int maxNumberOfBalloons(String text) {
      String balloonString = "balloon";

  List<String> listballoonChars = balloonString.split("");

  Map<String, int> mapOfText = {};

  for (int i = 0; i < text.length; i++) {
    String currentChar = text[i];
    if (mapOfText.containsKey(currentChar)) {
      mapOfText[currentChar] = mapOfText[currentChar]! + 1;
    } else {
      mapOfText[currentChar] = 1;
    }
  }

  int numberOfBalloon = 0;

  while ((mapOfText["b"] ?? 0) > 0) {
    bool buildBalloon = true;
    for (var char in listballoonChars) {
      if (mapOfText.containsKey(char) && mapOfText[char]! > 0) {
        mapOfText[char] = mapOfText[char]! - 1;
      } else {
        buildBalloon = false;
        break;
      }
    }

    if (buildBalloon) {
      numberOfBalloon++;
    }
  }

  return numberOfBalloon;
  }
} 
