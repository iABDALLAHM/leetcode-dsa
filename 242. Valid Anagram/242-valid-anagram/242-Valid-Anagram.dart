class Solution {
  bool isAnagram(String s, String t) {
  if (s.length != t.length) return false;
  var listOfS = s.split("")..sort();
  var listOfT = t.split("")..sort();

  return listOfT.join() == listOfS.join();
  }
}
