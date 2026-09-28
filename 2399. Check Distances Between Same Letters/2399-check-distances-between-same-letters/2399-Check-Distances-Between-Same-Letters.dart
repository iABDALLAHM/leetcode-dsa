class Solution {
  bool checkDistances(String s, List<int> distance) {

  List<String> letters = s.split("");


      for (int i = 0; i < letters.length; i++) {
    String currentChar = letters[i];
    int currentDistance = 0;
    for (int j = i + 1; j < letters.length; j++) {
      if (currentChar == letters[j]) {
        currentDistance = j - i - 1;
        int charIndex = s[i].codeUnitAt(0) - "a".codeUnitAt(0);
        if (currentDistance != distance[charIndex]) {
          return false;
          break;
        }
        break;
      }
    }
  }

  return true;
  }
}