class Solution {
  String modifyString(String s) {
      List<String> listOfChars = s.split("");
  List<String> listOfTestChars = ['a', 'b', 'c', "e"];
  print(listOfChars);

  for (int i = 0; i < listOfChars.length; i++) {
    if (listOfChars[i] == '?') {
      for (String ch in listOfTestChars) {
        bool diffFromLeft = (i == 0) || (listOfChars[i - 1] != ch);

        bool diffFromRight =
            (i == listOfChars.length - 1) || (listOfChars[i + 1] != ch);

        if (diffFromLeft && diffFromRight) {
          listOfChars[i] = ch;
          break;
        }
      }
    }
  }

  return listOfChars.join();

  }
}