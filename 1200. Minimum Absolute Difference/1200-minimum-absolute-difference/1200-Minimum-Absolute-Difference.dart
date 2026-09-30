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

  for (int i = 0; i < arr.length - 1; i++) {
    if (minAbsDiff == ((arr[i]) - (arr[i + 1])).abs()) {
      result.add([arr[i], arr[i + 1]]);
    }
  }

  return result;

  }
}