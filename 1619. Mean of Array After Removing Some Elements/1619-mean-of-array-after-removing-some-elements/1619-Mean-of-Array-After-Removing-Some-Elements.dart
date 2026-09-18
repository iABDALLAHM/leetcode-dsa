class Solution {
  double trimMean(List<int> arr) {
      arr.sort();
  print(arr);

  int numOfRemovedEle = (arr.length * 0.05).toInt();
  print(numOfRemovedEle);
  List<int> newElements = [];
  int sumOfAllEle = 0;

  for (int i = numOfRemovedEle; i < (arr.length - numOfRemovedEle); i++) {
    newElements.add(arr[i]);
    sumOfAllEle += arr[i];
  }
  return sumOfAllEle / newElements.length;
  }
}