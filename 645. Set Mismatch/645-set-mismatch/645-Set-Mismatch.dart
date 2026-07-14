class Solution {
  List<int> findErrorNums(List<int> nums) {
      Map<int, int> numbersMap = {};

  for (int i = 0; i < nums.length; i++) {
    int currentListEle = nums[i];
    if (numbersMap.containsKey(currentListEle)) {
      numbersMap[currentListEle] = numbersMap[currentListEle]! + 1;
    } else {
      numbersMap[currentListEle] = 1;
    }
  }

  List<int> listResult = [];

  numbersMap.forEach((key, value) {
    if (value > 1) {
      listResult.add(key);
    }
  });

  for (int i = 0; i < nums.length; i++) {
    if (!numbersMap.containsKey(i + 1)) {
      listResult.add(i + 1);
      break;
    }
  }

  return listResult;


  }
}