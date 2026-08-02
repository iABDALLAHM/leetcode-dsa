class Solution {
  int heightChecker(List<int> heights) {
      var sortedList = List.from(heights);
  sortedList.sort();

  print(heights);
  print(sortedList);
  int counterOfDiffere = 0;
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != sortedList[i]) {
      counterOfDiffere++;
    }
  }
 return  counterOfDiffere;
  }
}