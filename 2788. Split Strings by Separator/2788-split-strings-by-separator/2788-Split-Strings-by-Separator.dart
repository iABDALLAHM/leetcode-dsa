class Solution {
  List<String> splitWordsBySeparator(List<String> words, String separator) {
  List<String> newResult = [];
  for (int i = 0; i < words.length; i++) {
    List<String> wordsSplitted = words[i].split(separator);
    for (int i = 0; i < wordsSplitted.length; i++) {
      String newWord = wordsSplitted[i].trim().replaceAll(RegExp(r"\s+"), "");
      if (newWord.isNotEmpty) {
        newResult.add(newWord);
      }
    }
  }

  return newResult;

  }
}