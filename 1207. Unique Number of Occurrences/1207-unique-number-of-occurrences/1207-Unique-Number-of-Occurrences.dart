class Solution {
  bool uniqueOccurrences(List<int> arr) {
  Map<int, int> mapOfNums = {};

  for (int i = 0; i < arr.length; i++) {
    if (mapOfNums.containsKey(arr[i])) {
      mapOfNums[arr[i]] = mapOfNums[arr[i]]! + 1;
    } else {
      mapOfNums[arr[i]] = 1;
    }
  }
  print(mapOfNums);

  Set<int> frequencies = {};

  mapOfNums.forEach((key, value) {
    frequencies.add(value);
  });
  print(frequencies);
  return frequencies.length == mapOfNums.length;
  }
}