class Solution {
  List<int> sortArray(List<int> nums) {
    return mergeSort(list: nums);
  }


  List<int> mergeSort({required List<int> list}) {
  if (list.length <= 1) {
    return list;
  }

  int middle = list.length ~/ 2;
  List<int> sortedLeft = mergeSort(list: list.sublist(0, middle));
  List<int> sortedRight = mergeSort(list: list.sublist(middle));

  return merge(leftList: sortedLeft, rightList: sortedRight);
}


List<int> merge({required List<int> leftList, required List<int> rightList}) {
  List<int> result = [];
  int i = 0;
  int j = 0;

  while (i < leftList.length && j < rightList.length) {
    if (leftList[i] <= rightList[j]) {
      result.add(leftList[i]);
      i++;
    } else {
      result.add(rightList[j]);
      j++;
    }
  }

  result.addAll(leftList.sublist(i));
  result.addAll(rightList.sublist(j));

  return result;
}





}