class Solution {
  int secondHighest(String s) {

  var listOfAlphanumeric = s.split("");
  List<int> nums = [];

  for (int i = 0; i < listOfAlphanumeric.length; i++) {
    if (int.tryParse(listOfAlphanumeric[i]) != null &&
        !nums.contains(int.parse(listOfAlphanumeric[i]))) {
      nums.add(int.parse(listOfAlphanumeric[i]));
    }
  }


  nums.sort();

  print(nums);

  if (nums.length < 2) {
    return -1;
  } else {
    return nums[nums.length - 2];
  }

  }
}



