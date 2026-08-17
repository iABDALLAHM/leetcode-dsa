class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {

  List<int> instanceOfHeights = List.from(heights);
  instanceOfHeights.sort();

  Map<int, String> mapOfUserData = {};

  for (int i = 0; i < names.length; i++) {
    mapOfUserData[heights[i]] = names[i];
  }

  List<String> result = [];
  for (int i = instanceOfHeights.length - 1; i >= 0; i--) {
    result.add(mapOfUserData[instanceOfHeights[i]]!);
  }

 return result;

  }
}