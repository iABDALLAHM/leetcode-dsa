class Solution {
  bool canThreePartsEqualSum(List<int> arr) {
  int sumOfList = 0;

  for (int i = 0; i < arr.length; i++) {
    sumOfList += arr[i];
  }

  if (sumOfList % 3 != 0) {
    return  false;
  }

  int targetForEachPart = sumOfList ~/ 3;
  int foundPart = 0;
  int currentSum = 0;

  for (int i = 0; i < arr.length; i++) {
    currentSum += arr[i];
    if (currentSum == targetForEachPart) {
      foundPart++;
      currentSum = 0;
    }
  }

  return foundPart >= 3;

  }
}