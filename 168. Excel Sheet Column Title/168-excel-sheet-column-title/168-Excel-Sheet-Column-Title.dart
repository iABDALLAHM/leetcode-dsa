class Solution {
  String convertToTitle(int columnNumber) {
     List<String> chars = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  String result = "";

  while (columnNumber != 0) {
    columnNumber--;
    int remainder = columnNumber % 26;
    result += chars[remainder];
    columnNumber = columnNumber ~/ 26;
  }

    return result.split("").reversed.join().toString();

  }
}