class Solution {
  List<int> targetIndices(List<int> nums, int target) {

  nums.sort();
  List<int> result = [];
  int lowerBound = findLowerBound(nums: nums, target: target);
  int upperBound = findUpperBound(nums: nums, target: target);
  
  if(lowerBound==-1)return [];

  for (int i = lowerBound; i <= upperBound; i++) {
    result.add(i);
  }

  return result;

  }

  int findLowerBound({required List<int> nums, required int target}) {
  int start = 0;
  int end = nums.length - 1;
  int lowerBound = -1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (nums[mid] == target) {
      lowerBound = mid;
      end = mid - 1;
    } else if (nums[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return lowerBound;
}


int findUpperBound({required List<int> nums, required int target}) {
  int start = 0;
  int end = nums.length - 1;
  int upperBound = -1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (nums[mid] == target) {
      upperBound = mid;
      start = mid + 1;
    } else if (nums[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return upperBound;
}


}