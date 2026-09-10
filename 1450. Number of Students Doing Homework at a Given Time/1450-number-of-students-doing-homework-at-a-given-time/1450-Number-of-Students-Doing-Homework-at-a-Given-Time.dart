class Solution {
  int busyStudent(List<int> startTime, List<int> endTime, int queryTime) {
  int numOfStudentsDone = 0;
  for (int i = 0; i < startTime.length; i++) {
    if (queryTime <= endTime[i] && queryTime >= startTime[i]) {
      numOfStudentsDone++;
    }
  }
  return numOfStudentsDone;
  }
}