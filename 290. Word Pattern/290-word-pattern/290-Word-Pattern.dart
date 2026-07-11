class Solution {
  bool wordPattern(String pattern, String s) {

  var patternList = pattern.split("");
  var sList = s.split(" ");


  Map<String, String> mapPattern = {};
  Map<String, String> mapS = {};

  if (patternList.length != sList.length) {
  return false;
}

  for (int i = 0; i < patternList.length; i++) {
    String currentEle = patternList[i];
    if (mapPattern.containsKey(currentEle)) {
      if (mapPattern[currentEle] != sList[i]) {
        return false;
      }
    } else {
      mapPattern[currentEle] = sList[i];
    }
  }

  for (int i = 0; i < sList.length; i++) {
    String currentEle = sList[i];
    if (mapS.containsKey(currentEle)) {
      if (mapS[currentEle] != patternList[i]) {
        return false;
      }
    } else {
      mapS[currentEle] = patternList[i];
    }
  }

return true;

  }
}
