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

  int evenElementsLength = 0;
  int oddElementsLength = 0;

  while (evenElementsLength <= evenEle.length - 1 ||
      oddElementsLength <= oddEle.length - 1) {
    if (evenElementsLength <= evenEle.length - 1) {
      result.add(evenEle[evenElementsLength]);
    }

    if (oddElementsLength <= oddEle.length - 1) {
      result.add(oddEle[oddElementsLength]);
    }

    evenElementsLength++;
    oddElementsLength++;
  }


  return result;

  }
}