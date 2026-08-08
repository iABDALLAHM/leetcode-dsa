class Solution {
  String capitalizeTitle(String title) {

  var lowerCaseTitle = title.toLowerCase();
  var listOfWords = lowerCaseTitle.split(" ");


  String result = "";

  for (int i = 0; i < listOfWords.length; i++) {
    String currentWord = listOfWords[i];
    if (currentWord.length <= 2) {
      result += " $currentWord";
    } else {
      result += " ${currentWord[0].toUpperCase()}${currentWord.substring(1)}";
    }
  }

  return result.trim();

  }
}