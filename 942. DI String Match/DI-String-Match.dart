1class Solution {
2 List<int> diStringMatch(String s) {
3    List<int> numbers = List.filled(s.length + 1, 0);
4
5    int lowValue = 0;
6    int highValue = s.length;
7
8    for (int i = 0; i < s.length; i++) {
9     if (s[i].toLowerCase() == "i") {
10      numbers[i] = lowValue;
11      lowValue++;
12    } else if (s[i].toLowerCase() == "d") {
13      numbers[i] = highValue;
14      highValue--;
15    }
16    }
17
18    numbers[numbers.length - 1] = highValue;
19
20    return numbers;
21    
22    }
23}