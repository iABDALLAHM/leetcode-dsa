class Solution {
  int hardestWorker(int n, List<List<int>> logs) {
    
  int longestTime = 0;
  int employeeId = logs[0][0];
  int startTime = 0;

  for (int i = 0; i < logs.length; i++) {
    List<int> currentLog = logs[i];

    int leaveTime = currentLog[1];

    if ((leaveTime - startTime) > longestTime) {
      longestTime = (leaveTime - startTime);
      print("(leaveTime - startTime) ${(leaveTime - startTime)}");
      employeeId = currentLog[0];
    } else if ((leaveTime - startTime) == longestTime) {
      if (currentLog[0] < employeeId) {
        employeeId = currentLog[0];
      }
    }

    startTime = leaveTime;
    print("startTime $startTime");
  }

 return employeeId;

  }
}