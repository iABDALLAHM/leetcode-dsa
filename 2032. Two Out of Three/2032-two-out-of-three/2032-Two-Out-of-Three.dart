class Solution {
  List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
  

  Set<int> setOfNums1 = nums1.toSet();

  Set<int> setOfNums2 = nums2.toSet();

  Set<int> setOfNums3 = nums3.toSet();

  Set<int> setOfAllNums = {...setOfNums1, ...setOfNums2, ...setOfNums3};

  print(setOfAllNums);

  List<int> result = [];
  for (var element in setOfAllNums) {
    if (setOfNums1.contains(element) && setOfNums2.contains(element) ||
        setOfNums2.contains(element) && setOfNums3.contains(element) ||
        setOfNums1.contains(element) && setOfNums3.contains(element)) {
      result.add(element);
    }
  }

  return result;



  }
}