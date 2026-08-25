class Solution {
  List<String> findWords(List<String> words) {

    String firstString = "qwertyuiop";
    String secondString = "asdfghjkl";
    String thirdString = "zxcvbnm";

  Set<String> firstRowChars = firstString.split("").toSet();
  Set<String> secondRowChars = secondString.split("").toSet();
  Set<String> thirdRowChars = thirdString.split("").toSet();

  print(firstRowChars);
  print(secondRowChars);
  print(thirdRowChars);

  List<String> result = [];

  for (int i = 0; i < words.length; i++) {
    String currentWord = words[i].toLowerCase();
    Set<String> targetRow = {};
    if (firstRowChars.contains(currentWord[0])) {
      targetRow = firstRowChars;
    } else if (secondRowChars.contains(currentWord[0])) {
      targetRow = secondRowChars;
    } else if (thirdRowChars.contains(currentWord[0])) {
      targetRow = thirdRowChars;
    }

    bool isValid = true;
    for (int k = 0; k < currentWord.length; k++) {
      if (!targetRow.contains(currentWord[k])) {
        isValid = false;
        break;
      }
    }

    if (isValid) {
      result.add(words[i]);
    }
  }

  return result;

  }
}