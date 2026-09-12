class Solution {
  int reverse(int x) {
  int result = 0;

  const int min32 = -2147483648;
  const int max32 = 2147483647; 

  if (x < 0) {
    String number = x.toString().replaceAll(RegExp("[^0-9]"), "");
    int reversedNumber = -int.parse(number.split("").reversed.join());
    result = reversedNumber;
    if (reversedNumber < min32 || reversedNumber > max32) {
      result = 0;
    }
  } else {
    String number = x.toString();
    int reversedNumber = int.parse(number.split("").reversed.join());
    result = reversedNumber;
    if (reversedNumber < min32 || reversedNumber > max32) {
      result = 0;
    }
  }

    return result;
  }
}