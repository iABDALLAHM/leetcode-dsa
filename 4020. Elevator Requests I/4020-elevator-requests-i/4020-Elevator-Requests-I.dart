class Solution {
  int elevatorRequests(int n, List<int> requests) {
      int totalTime = 0;
  int currentFloor = 0;

  for (int i = 0; i < requests.length; i++) {
    totalTime += (requests[i] - currentFloor).abs();
    currentFloor = requests[i];
  }

  return totalTime;

  }
}