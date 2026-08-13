class Solution {
  bool checkRecord(String s) {
  var listOfStatus = s.split("");

  int absentCounter = 0;
  int lateCounter = 0;
  int presentCounter = 0;
  int maxLateCounter = 0;

  for (int i = 0; i < listOfStatus.length; i++) {
    String currentStatus = listOfStatus[i];
    if (currentStatus == "A") {
      lateCounter = 0;
      absentCounter++;
    } else if (currentStatus == "L") {
      lateCounter++;
      if (lateCounter > maxLateCounter) {
        maxLateCounter = lateCounter;
      }
    } else {
      lateCounter = 0;
      presentCounter++;
    }
  }



  if (absentCounter >= 2 || maxLateCounter >= 3) {
    return false;
  } else {
    return true;
  }
  }
}