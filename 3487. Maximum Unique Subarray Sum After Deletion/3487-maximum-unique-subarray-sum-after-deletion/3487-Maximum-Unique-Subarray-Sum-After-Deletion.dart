class Solution {
  int maxSum(List<int> nums) {
    // first solution 
  nums.sort();
  List<int> listOfEle = nums.toSet().toList();
  print(listOfEle);

  List<int> modifiedList = [];

  for (int i = listOfEle.length - 1; i >= 0; i--) {
    if (listOfEle[i] > 0) {
      modifiedList.add(listOfEle[i]);
    } else if (modifiedList.isEmpty) {
      modifiedList.add(listOfEle[i]);
      break;
    }
  }
  print(modifiedList);

  int maxSum = 0;

  for (int i = 0; i < modifiedList.length; i++) {
    maxSum += modifiedList[i];
  }
  print(maxSum);

  return maxSum;

  }
}