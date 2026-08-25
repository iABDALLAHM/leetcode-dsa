class Solution {
  String kthDistinct(List<String> arr, int k) {
      Map<String, int> mapOfChars = {};
  for (int i = 0; i < arr.length; i++) {
    if (mapOfChars.containsKey(arr[i])) {
      mapOfChars[arr[i]] = mapOfChars[arr[i]]! + 1;
    } else {
      mapOfChars[arr[i]] = 1;
    }
  }
  print(mapOfChars);

  for (String s in arr) {
    if (mapOfChars[s] == 1) {
      k--;
      if (k == 0) {
        return s;
      }
    }
  }

  return "";
  }
}