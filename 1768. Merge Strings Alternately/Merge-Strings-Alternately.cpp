1class Solution {
2public:
3    string mergeAlternately(string word1, string word2) {
4    int pointerWord1 = 0;
5    int pointerWord2 = 0;
6
7    string newValue = "";
8
9    while (pointerWord1 < word1.length() || pointerWord2 < word2.length()) {
10    if (pointerWord1 < word1.length()) {
11      newValue += word1[pointerWord1];
12      pointerWord1++;
13    }
14
15    if (pointerWord2 < word2.length()) {
16      newValue += word2[pointerWord2];
17      pointerWord2++;
18    }
19    }
20
21    cout << newValue << endl;
22
23    return newValue;
24    }
25};