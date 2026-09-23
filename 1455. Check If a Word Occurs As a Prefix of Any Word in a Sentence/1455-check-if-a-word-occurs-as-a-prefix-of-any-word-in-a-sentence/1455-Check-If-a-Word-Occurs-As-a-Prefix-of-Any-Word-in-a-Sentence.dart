class Solution {
  int isPrefixOfWord(String sentence, String searchWord) {
      List<String> listOfSentence = sentence.split(" ");
  print(listOfSentence);
  int result = -1;

  for (int i = 0; i < listOfSentence.length; i++) {
    if (listOfSentence[i].startsWith(searchWord)) {
      result = i + 1;
      break;
    }
  }

 return result;

  }
}