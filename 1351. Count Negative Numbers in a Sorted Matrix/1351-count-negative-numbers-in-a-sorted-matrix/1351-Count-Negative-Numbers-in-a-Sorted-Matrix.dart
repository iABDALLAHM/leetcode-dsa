class Solution {
  int countNegatives(List<List<int>> grid) {
      int negativeNum = 0;
  for (int i = 0; i < grid.length; i++) {
    List<int> currentList = grid[i];
    for (int j = 0; j < currentList.length; j++) {
      if (currentList[j] < 0) {
        negativeNum++;
      }
    }
  }
 return negativeNum;
  }
}