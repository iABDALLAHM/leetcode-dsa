class Solution {
  bool findSubarrays(List<int> nums) {
      int counterOfSubArray = 0;
  Set<int> setOfSum = {};
  for (int i = 0; i < nums.length - 1; i++) {
    List<int> subList = nums.sublist(
      i,
      (i + 2) > nums.length ? nums.length : (i + 2),
    );

    int sumOfCurrentSubArray = 0;

    for (int j = 0; j < subList.length; j++) {
      sumOfCurrentSubArray += subList[j];
    }

    if (setOfSum.contains(sumOfCurrentSubArray)) {
      counterOfSubArray++;
    } else {
      setOfSum.add(sumOfCurrentSubArray);
    }
  }
 return counterOfSubArray > 0 ? true : false;
  }
}