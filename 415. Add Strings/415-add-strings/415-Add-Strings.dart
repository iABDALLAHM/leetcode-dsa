class Solution {
  String addStrings(String num1, String num2) {
      int pointerNum1 = num1.length - 1;
  int pointerNum2 = num2.length - 1;
  int carry = 0;
  StringBuffer stringBuffer = StringBuffer();
  while (pointerNum1 >= 0 || pointerNum2 >= 0 || carry > 0) {
    int x = pointerNum1 >= 0
        ? num1.codeUnitAt(pointerNum1) - "0".codeUnitAt(0)
        : 0;
    print("x: $x");
    int y = pointerNum2 >= 0
        ? num2.codeUnitAt(pointerNum2) - "0".codeUnitAt(0)
        : 0;
    print("y: $y");
    int sum = x + y + carry;

    carry = sum ~/ 10;

    stringBuffer.write(sum % 10);

    pointerNum2--;
    pointerNum1--;
  }

 return stringBuffer.toString().split("").reversed.join();

  }
}