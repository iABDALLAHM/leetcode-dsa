class Solution {
  List<int> minDistinctFreqPair(List<int> nums) {
      Map<int, int> frequencyOfElements = {};

  for (int i = 0; i < nums.length; i++) {
    if (frequencyOfElements.containsKey(nums[i])) {
      frequencyOfElements[nums[i]] = frequencyOfElements[nums[i]]! + 1;
    } else {
      frequencyOfElements[nums[i]] = 1;
    }
  }

  List<int> keys = frequencyOfElements.keys.toList()..sort();

  int x = keys[0];

  for (int i = 1; i < keys.length; i++) {
      if (frequencyOfElements[x] != frequencyOfElements[keys[i]]) {
       return [x, keys[i]];
    }
  }


  return [-1, -1];

  }
}