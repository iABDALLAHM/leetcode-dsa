class Solution {
  int search(List<int> nums, int target) {
    int low = 0;
  int high = nums.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = nums[mid];
    if (guess == target) {
      return mid;
      break;
    } else if (guess > target) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

 return -1;

  }
}