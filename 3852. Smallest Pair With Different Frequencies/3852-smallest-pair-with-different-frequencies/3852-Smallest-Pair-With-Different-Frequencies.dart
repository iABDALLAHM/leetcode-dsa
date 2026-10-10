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

  for (int i = 0; i < keys.length; i++) {
    for (int j = i + 1; j < keys.length; j++) {
      if (frequencyOfElements[x] != frequencyOfElements[keys[j]]) {
       return [x, keys[j]];
      }
    }
  }


  return [-1, -1];

  }
}