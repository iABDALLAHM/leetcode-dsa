class Solution {
  int numJewelsInStones(String jewels, String stones) {
    
  var listOfJewels = jewels.split("");
  var listOfStones = stones.split("");

  Map<String, int> mapOfStones = {};

  for (int i = 0; i < listOfStones.length; i++) {
    String currentKey = listOfStones[i];
    if (mapOfStones.containsKey(currentKey)) {
      mapOfStones[currentKey] = mapOfStones[currentKey]! + 1;
    } else {
      mapOfStones[currentKey] = 1;
    }
  }


  int numberOfJewels = 0;
  
  mapOfStones.forEach((key, value) {
    if (listOfJewels.contains(key)) {
      numberOfJewels += value;
    }
  });

  return numberOfJewels;

  }
}