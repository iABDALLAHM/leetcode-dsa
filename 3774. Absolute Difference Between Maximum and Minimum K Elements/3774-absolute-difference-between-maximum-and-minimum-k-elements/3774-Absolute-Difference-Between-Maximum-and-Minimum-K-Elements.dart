class Solution {
  int absDifference(List<int> nums, int k) {
    
  nums.sort();
  int sumOfLargestKElements = 0;
  int sumOfSmallestKElements = 0;

  for (int i = nums.length - 1; i >= nums.length - k; i--) {
    print("Now Element ${nums[i]}");
    sumOfLargestKElements += nums[i];
  }
  print(sumOfLargestKElements);

  for (int i = 0; i < k; i++) {
    sumOfSmallestKElements += nums[i];
  }
  print(sumOfSmallestKElements);


  return (sumOfLargestKElements - sumOfSmallestKElements).abs();

  }
}