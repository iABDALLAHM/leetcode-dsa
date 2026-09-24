class Solution {
  int arraySign(List<int> nums) {
      int productOfNums = nums[0];

  for (int i = 0; i < nums.length; i++) {
    if (nums[i] < 0) {
      nums[i] = -1;
    } else if (nums[i] > 0) {
      nums[i] = 1;
    } else {
      nums[i] = 0;
    }
  }
  print(nums);

  for (int i = 1; i < nums.length; i++) {
    productOfNums = (productOfNums) * (nums[i]);
  }


  if (productOfNums < 0) {
return -1;
  }else if (productOfNums>0){
return 1;
  }else {
return 0;
  }

  }
}