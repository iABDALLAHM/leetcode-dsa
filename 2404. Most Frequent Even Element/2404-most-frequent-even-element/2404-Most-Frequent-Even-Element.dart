class Solution {
  int mostFrequentEven(List<int> nums) {
      Map<int, int> numbersMap = {};
      

  for (int i = 0; i < nums.length; i++) {
    int currentNum = nums[i];
    if (numbersMap.containsKey(currentNum)) {
      numbersMap[currentNum] = numbersMap[currentNum]! + 1;
    } else {
      numbersMap[currentNum] = 1;
    }
  }

  int maxFreq = 0;
  int answer = -1;

  numbersMap.forEach((nums, freq) {
    if (nums % 2 == 0) {
      if (freq > maxFreq) {
        maxFreq = freq;
        answer = nums;
      } else if (freq == maxFreq) {
        if (nums < answer) {
          answer = nums;
        }
      }
    }
  });

  return answer;

  }
}
