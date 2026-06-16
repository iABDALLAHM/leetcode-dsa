1class Solution {
2  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
3    List<String> rules = ["type", "color", "name"];
4    int countMatch = 0;
5
6  for (int i = 0; i < items.length; i++) {
7    if (ruleKey == rules[0]) {
8      if (ruleValue == items[i][0]) {
9        countMatch++;
10      }
11    } else if (ruleKey == rules[1]) {
12      if (ruleValue == items[i][1]) {
13        countMatch++;
14      }
15    } else if (ruleKey == rules[2]) {
16      if (ruleValue == items[i][2]) {
17        countMatch++;
18      }
19    }
20  }
21
22  return countMatch;
23  }
24}