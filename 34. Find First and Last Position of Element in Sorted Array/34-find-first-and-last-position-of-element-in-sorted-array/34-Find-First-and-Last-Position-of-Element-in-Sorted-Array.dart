class Solution {
  List<int> searchRange(List<int> nums, int target) {
      int first = -1;
  int last = -1;

  int low = 0;
  int high = nums.length - 1;
  while (high >= low) {
    int mid = (low + high) ~/ 2;
    int guess = nums[mid];

    if (guess == target) {
      first = mid;
      high = mid - 1;
    } else if (guess < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  print(first);

  int low2 = 0;
  int high2 = nums.length - 1;
  while (high2 >= low2) {
    int mid = (low2 + high2) ~/ 2;
    int guess = nums[mid];

    if (guess == target) {
      last = mid;
      low2 = mid + 1;
    } else if (guess < target) {
      low2 = mid + 1;
    } else {
      high2 = mid - 1;
    }
  }
  print(last);

  return [first,last];

  }
}