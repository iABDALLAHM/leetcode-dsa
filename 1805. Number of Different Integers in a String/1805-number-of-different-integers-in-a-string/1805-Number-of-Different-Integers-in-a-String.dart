class Solution {
  int numDifferentIntegers(String word) {

      var wordList = word
      .replaceAll(RegExp(r"[a-z]"), " ")
      .trim()
      .replaceAll(RegExp(r"\s+"), " ")
      .split(" ");

  Set<BigInt> setOfNumbers = {};

  for (int i = 0; i < wordList.length; i++) {
    if (wordList[i].isNotEmpty) {
      BigInt currentNumber = BigInt.parse(wordList[i]);
      setOfNumbers.add(currentNumber);
    }
  }


  return setOfNumbers.length;

  }
}