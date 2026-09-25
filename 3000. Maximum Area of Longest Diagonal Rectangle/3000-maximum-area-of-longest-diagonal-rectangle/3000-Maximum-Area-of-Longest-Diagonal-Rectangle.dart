class Solution {
  int areaOfMaxDiagonal(List<List<int>> dimensions) {

 int maxDiagonal = 0;
  int maxArea = 0;

  for (int i = 0; i < dimensions.length; i++) {
    List<int> currentList = dimensions[i];
    int length = currentList[0];
    int width = currentList[1];
    int currentDiagonal = (length * length) + (width * width);
    print(currentList);
    print((length * width));
    print(currentDiagonal);

    if (currentDiagonal > maxDiagonal) {
      maxDiagonal = currentDiagonal;
      maxArea = (length * width);
    } else if (currentDiagonal == maxDiagonal) {
      maxArea = max(maxArea, (length * width));
    }

  }


  return maxArea;

  }
}