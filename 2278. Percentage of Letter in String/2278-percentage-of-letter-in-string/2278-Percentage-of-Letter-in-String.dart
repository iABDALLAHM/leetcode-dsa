class Solution {
  int percentageLetter(String s, String letter) {

    var listOfChars = s.split("");

  Map<String, int> mapOfChars = {};

  for (int i = 0; i < listOfChars.length; i++) {
    String currentKey = listOfChars[i];
    if (mapOfChars.containsKey(currentKey)) {
      mapOfChars[currentKey] = mapOfChars[currentKey]! + 1;
    } else {
      mapOfChars[currentKey] = 1;
    }
  }


  int percentage = 0;
  mapOfChars.forEach((key, value) {
    if (key == letter) {
      percentage = ((value / listOfChars.length) * 100).toInt();
    }
  });

  return percentage;

  }
}
