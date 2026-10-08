class Solution {
  List<int> sortEvenOdd(List<int> nums) {

  List<int> oddEle = [];
  List<int> evenEle = [];

  for (int i = 0; i < nums.length; i++) {
    if (i % 2 == 0) {
      evenEle.add(nums[i]);
    } else {
      oddEle.add(nums[i]);
    }
  }

  oddEle.sort((a, b) => b.compareTo(a));
  evenEle.sort();

  print(oddEle);
  print(evenEle);

  List<int> result = [];

  int evenElePointer = 0;
  int oddElePointer = 0;

  while (evenElePointer <= evenEle.length - 1 ||
      oddElePointer <= oddEle.length - 1) {
    if (evenElePointer <= evenEle.length - 1) {
      result.add(evenEle[evenElePointer]);
    }

    if (oddElePointer <= oddEle.length - 1) {
      result.add(oddEle[oddElePointer]);
    }

    evenElePointer++;
    oddElePointer++;
  }


  return result;

  }
}