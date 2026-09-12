class Solution {
  bool threeConsecutiveOdds(List<int> arr) {
      bool result = false;
  for (int i = 0; i < arr.length - 2; i++) {
    List<int> currentSubList = arr.sublist(i, i + 3);
    bool isOdd = true;

    for (int j = 0; j < currentSubList.length; j++) {
      if (currentSubList[j] % 2 == 0) {
        isOdd = false;
        break;
      }
    }
    if (isOdd) {
      result = true;
      print(currentSubList);
      break;
    }
  }

  return result;

  }
}