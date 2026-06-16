1class Solution {
2  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
3    List<String> rules = ["type", "color", "name"];
4    int countMatch = 0;
5
6  for (int i = 0; i < items.length; i++) {
7    for (int j = 0; j < items.length; j++) {
8      if (ruleKey == rules[0]) {
9        if (ruleValue == items[i][0]) {
10          countMatch++;
11          break;
12        }
13      } else if (ruleKey == rules[1]) {
14        if (ruleValue == items[i][1]) {
15          countMatch++;
16          break;
17        }
18      } else if (ruleKey == rules[2]) {
19        if (ruleValue == items[i][2]) {
20          countMatch++;
21          break;
22        }
23      }
24    }
25  }
26
27  return countMatch;
28  }
29}