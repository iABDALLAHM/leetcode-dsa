1class Solution {
2  int findTheDistanceValue(List<int> arr1, List<int> arr2, int d) {
3  int distanceValue = 0;
4
5  for (int i = 0; i < arr1.length; i++) {
6    bool isFar = true;
7
8    for (int j = 0; j < arr2.length; j++) {
9      if ((arr1[i] - arr2[j]).abs() <= d) {
10        isFar = false;
11        break;
12      }
13    }
14    
15    if (isFar) {
16      distanceValue++;
17    }
18  }
19
20  return distanceValue;
21  }
22}