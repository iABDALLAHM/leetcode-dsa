class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    
  int numOfEmployeesMakeTarget = 0;

  for (int i = 0; i < hours.length; i++) {
    if (hours[i] >= target) {
      numOfEmployeesMakeTarget++;
    }
  }
  return numOfEmployeesMakeTarget;
  }
}