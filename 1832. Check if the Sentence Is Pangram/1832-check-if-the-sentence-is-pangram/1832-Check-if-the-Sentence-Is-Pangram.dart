class Solution {
  bool checkIfPangram(String sentence) {

  Set<String> charsSet = {};

  for (int i = 0; i < sentence.length; i++) {
    charsSet.add(sentence[i]);
  }

  if (charsSet.length == 26){
    return true;
  }
  return false;
  }
}