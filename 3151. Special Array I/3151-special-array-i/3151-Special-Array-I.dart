class Solution {
  bool isArraySpecial(List<int> nums) {
     if (nums.length == 1){
         return true;
    }

      bool result = true;
  for (int i = 1; i < nums.length; i++) {
    int prevEle = nums[i - 1];
    int currentElement = nums[i];
    if (currentElement % 2 == prevEle % 2) {
      result = false;
    }
  }


    return result;
  }
}