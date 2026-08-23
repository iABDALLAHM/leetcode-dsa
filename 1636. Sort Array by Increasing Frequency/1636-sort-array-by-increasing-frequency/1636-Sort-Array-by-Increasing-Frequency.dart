class Solution {
  List<int> frequencySort(List<int> nums) {
    
  Map<int, int> mapOfElements = {};

  for (int i = 0; i < nums.length; i++) {
    if (mapOfElements.containsKey(nums[i])) {
      mapOfElements[nums[i]] = mapOfElements[nums[i]]! + 1;
    } else {
      mapOfElements[nums[i]] = 1;
    }
  }

  print(mapOfElements);

  nums.sort((a, b) {
    int freqA = mapOfElements[a]!;
    int freqB = mapOfElements[b]!;

    // لو التكرار مختلف، رتب تصاعدياً حسب التكرار
    if (freqA != freqB) {
      return freqA.compareTo(freqB);
    }

    // لو التكرار متساوي، رتب تنازلياً حسب قيمة الرقم نفسه
    return b.compareTo(a);
  });

  return nums;
  }
}