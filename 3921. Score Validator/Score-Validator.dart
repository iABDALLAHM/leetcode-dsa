1class Solution {
2  List<int> scoreValidator(List<String> events) {
3
4    
5  int score = 0;
6  int counter = 0;
7
8  for (int i = 0; i < events.length; i++) {
9    if (counter == 10) {
10      break;
11    } else {
12      if (int.tryParse(events[i]) != null) {
13        score += int.parse(events[i]);
14      } else if (events[i] == "W") {
15        counter++;
16      } else if (events[i] == "WD") {
17        score++;
18      } else if (events[i] == "NB") {
19        score++;
20      }
21    }
22  }
23
24  return [score,counter];
25  }
26}