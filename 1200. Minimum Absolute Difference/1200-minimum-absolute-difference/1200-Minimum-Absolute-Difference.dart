class Solution {
  List<List<int>> minimumAbsDifference(List<int> arr) {
    
   arr.sort();
  print(arr);

  int pointer1 = 0;
  int pointer2 = 1;
  int minAbsDiff = ((arr[0]) - (arr[1])).abs();

  for (int i = 0; i < arr.length - 1; i++) {
    if (minAbsDiff >= ((arr[pointer1]) - (arr[pointer2])).abs()) {
      minAbsDiff = ((arr[pointer1]) - (arr[pointer2])).abs();
    }
    pointer1++;
    pointer2++;
  }
  print(minAbsDiff);

  List<List<int>> result = [];
  int a = 0;
  int b = 0;
  for (int i = 0; i < arr.length - 1; i++) {
    bool isMin = false;
    for (int j = i + 1; j < arr.length; j++) {
      if (minAbsDiff == ((arr[i]) - (arr[j])).abs()) {
        isMin = true;
        a = (arr[i]);
        b = (arr[j]);
        minAbsDiff = ((arr[i]) - (arr[j])).abs();
      } else {
        break;
      }
    }
    if (isMin) {
      result.add([a, b]);
    }
  }
  return result;

  }
}