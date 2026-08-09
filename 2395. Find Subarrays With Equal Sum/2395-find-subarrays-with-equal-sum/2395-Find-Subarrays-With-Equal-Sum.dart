class Solution {
  bool findSubarrays(List<int> nums) {

    int counterOfSubArray = 0;
    Set<int> setOfSum = {};

  for (int i = 0; i < nums.length - 1; i++) {

    int sumOfCurrentSubArray = nums[i] + nums[i + 1];

    if (setOfSum.contains(sumOfCurrentSubArray)) {
      counterOfSubArray++;
    } else {
      setOfSum.add(sumOfCurrentSubArray);
    }

  }


 return counterOfSubArray > 0 ? true : false;
  }
}