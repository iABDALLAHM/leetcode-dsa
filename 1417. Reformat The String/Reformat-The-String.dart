1class Solution {
2  String reformat(String s) {
3      List letters = [];
4  List numbers = [];
5
6  for (int i = 0; i < s.length; i++) {
7    if (int.tryParse(s[i]) == null) {
8      letters.add(s[i]);
9    } else {
10      numbers.add(s[i]);
11    }
12  }
13
14
15  if (((letters.length) - (numbers.length)).abs() > 1) {
16    return "";
17  }
18
19  int numbersPointer = 0;
20  int lettersPointer = 0;
21
22  String result = "";
23
24  bool startWithLetters = ((letters.length) >= (numbers.length));
25
26
27  while (numbersPointer < numbers.length || lettersPointer < letters.length) {
28    if (startWithLetters && lettersPointer < letters.length) {
29      result += letters[lettersPointer];
30      lettersPointer++;
31    }
32
33    if (!startWithLetters && numbersPointer < numbers.length) {
34      result += numbers[numbersPointer];
35      numbersPointer++;
36    }
37
38    startWithLetters = !startWithLetters;
39  }
40
41
42  return result;
43  }
44}