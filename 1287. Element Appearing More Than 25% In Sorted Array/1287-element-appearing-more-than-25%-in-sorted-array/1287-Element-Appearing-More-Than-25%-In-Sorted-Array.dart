class Solution {
  int findSpecialInteger(List<int> arr) {
      Map<int, int> mapOfElements = {};

  for (int i = 0; i < arr.length; i++) {
    if (mapOfElements.containsKey(arr[i])) {
      mapOfElements[arr[i]] = mapOfElements[arr[i]]! + 1;
    } else {
      mapOfElements[arr[i]] = 1;
    }
  }
  print(mapOfElements);
  int elementAppear = mapOfElements.keys.first;
  mapOfElements.forEach((key, value) {
    if ((value / arr.length) > .25) {
      elementAppear = key;
    }
  });

  return elementAppear;

  }
}