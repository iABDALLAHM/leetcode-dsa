class Solution {
  List<int> arrayRankTransform(List<int> arr) {

  Set<int> setOfElements = arr.toSet();
  List<int> sortedArray = setOfElements.toList();
  List<int> listOfRank = [];
  Map<int, int> mapOfElements = {};
  sortedArray.sort();
  int rank = 1;

  for (int i = 0; i < sortedArray.length; i++) {
    if (sortedArray[i] > sortedArray[i - 1 < 0 ? 0 : 1 - 1]) {
      rank++;
    }
    listOfRank.add(rank);
  }

  for (int i = 0; i < sortedArray.length; i++) {
    mapOfElements[sortedArray[i]] = listOfRank[i];
  }

  for (int i = 0; i < arr.length; i++) {
    int currentValueOnMap = mapOfElements[arr[i]] ?? 0;
    arr[i] = currentValueOnMap;
  }
  return arr;

  }
}