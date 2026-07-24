class Solution {
  String repeatedCharacter(String s) {
    var listOfS = s.split("");
    Set<String> setOfS = {};

  for (int i = 0; i < listOfS.length; i++) {
    if (setOfS.contains(listOfS[i])) {
      return listOfS[i];
      break;
    } else {
      setOfS.add(listOfS[i]);
    }
  }

return "";

  }
}