class Solution {
  int maxFrequencyElements(List<int> nums) {
    
  Map<int, int> mapOfOccerence = {};


  for (int i = 0; i < nums.length; i++) {
    if (mapOfOccerence.containsKey(nums[i])) {
      mapOfOccerence[nums[i]] = mapOfOccerence[nums[i]]! + 1;
    } else {
      mapOfOccerence[nums[i]] = 1;
    }
  }
  print(mapOfOccerence);

  int maxOccer = 0;

  mapOfOccerence.forEach((key, value) {
    if (value > maxOccer) {
      maxOccer = value;
    }
  });
  print(maxOccer);


  int totalFrequencies = 0;

  mapOfOccerence.forEach((key, value) {
    if (value == maxOccer) {
      totalFrequencies += value;
    }
  });

  return totalFrequencies;
  }
}