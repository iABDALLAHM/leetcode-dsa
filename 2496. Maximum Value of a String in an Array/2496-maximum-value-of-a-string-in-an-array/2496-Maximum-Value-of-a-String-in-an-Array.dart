class Solution {
  int maximumValue(List<String> strs) {
      List<int> listOfInt = [];
    for (int i = 0; i < strs.length; i++) {
    if (int.tryParse(strs[i]) != null) {
      listOfInt.add(int.parse(strs[i]));
    } else {
      listOfInt.add(strs[i].length);
    }
  }
  int maxValue = listOfInt[0];
  for (int i = 0; i < listOfInt.length; i++) {
    if (maxValue < listOfInt[i]) {
      maxValue = listOfInt[i];
    }
  }
  return maxValue;
  }
}