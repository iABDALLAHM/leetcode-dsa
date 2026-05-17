1class Solution {
2  String firstPalindrome(List<String> words) {
3for (int i = 0; i < words.length; i++) {
4    String str = words[i];
5    int pointer1 = 0;
6    int pointer2 = str.length - 1;
7    bool isPalidrome = true;
8
9    while (pointer2 > pointer1) {
10      if (str[pointer1] != str[pointer2]) {
11        isPalidrome = false;
12        break;
13      }
14      pointer1++;
15      pointer2--;
16    }
17    if (isPalidrome) {
18      return str;
19      break;
20    }
21  }
22  return "";
23  }
24}
25