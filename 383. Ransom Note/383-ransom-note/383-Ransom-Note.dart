class Solution {
  bool canConstruct(String ransomNote, String magazine) {
      Map<String, int> mapOfRansom = {};
  for (int i = 0; i < ransomNote.length; i++) {
    if (mapOfRansom.containsKey(ransomNote[i])) {
      mapOfRansom[ransomNote[i]] = mapOfRansom[ransomNote[i]]! + 1;
    } else {
      mapOfRansom[ransomNote[i]] = 1;
    }
  }
  print(mapOfRansom);
  Map<String, int> mapOfMagazine = {};
  for (int i = 0; i < magazine.length; i++) {
    if (mapOfMagazine.containsKey(magazine[i])) {
      mapOfMagazine[magazine[i]] = mapOfMagazine[magazine[i]]! + 1;
    } else {
      mapOfMagazine[magazine[i]] = 1;
    }
  }
  print(mapOfMagazine);
  bool result = true;
  mapOfRansom.forEach((key, value) {
    if (mapOfMagazine.containsKey(key)) {
      int valueOfCurrentChar = mapOfMagazine[key] ?? 0;
      if (valueOfCurrentChar < value) {
        result = false;
      }
    } else {
      result = false;
    }
  });

  return result;

  }
}