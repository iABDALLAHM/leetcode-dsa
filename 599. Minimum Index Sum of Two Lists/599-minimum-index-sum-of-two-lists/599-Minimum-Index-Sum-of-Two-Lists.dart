class Solution {
  List<String> findRestaurant(List<String> list1, List<String> list2) {

  Map<String, int> stringsMap = {};

  for (int i = 0; i < list1.length; i++) {
    String currentStirng = list1[i];
    stringsMap[currentStirng] = i;
  }
  print(stringsMap);

  int indexList1 = 0;
  int indexList2 = 0;
  List<String> listOfResult = [];
  int minResult = list1.length + list2.length;

  for (int i = 0; i < list2.length; i++) {
    String currentString = list2[i];
    if (stringsMap.containsKey(currentString)) {
      indexList1 = stringsMap[currentString]!;
      indexList2 = i;
      int sumIndex = indexList1 + indexList2;

      if (sumIndex < minResult) {
        minResult = sumIndex;
        listOfResult.clear();
        listOfResult.add(currentString);
      }else if (sumIndex == minResult) {
        listOfResult.add(currentString);
      }
    }
  }
  return listOfResult;
  }
}