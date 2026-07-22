class Solution {
  int numberOfSpecialChars(String word) {
      Set lowersLettersOfSet = {};
  Set upperLettersOfSet = {};

  int numOfOccer = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] == word[i].toLowerCase()) {
      lowersLettersOfSet.add(word[i]);
    }
    if (word[i] == word[i].toUpperCase()) {
      upperLettersOfSet.add(word[i]);
    }
  }
  print(lowersLettersOfSet);
  print(upperLettersOfSet);

  for (var element in lowersLettersOfSet) {
    if (upperLettersOfSet.contains(element.toString().toUpperCase())) {
      numOfOccer++;
    }
  }
  return numOfOccer;
  }
}