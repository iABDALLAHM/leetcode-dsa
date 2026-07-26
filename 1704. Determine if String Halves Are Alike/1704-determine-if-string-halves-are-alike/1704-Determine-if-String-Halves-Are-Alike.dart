class Solution {
  bool halvesAreAlike(String s) {
      List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
  String a = s.substring(0, s.length ~/ 2);
  String b = s.substring(s.length ~/ 2);
  print(a);
  print(b);

  int counterVowelA = 0;
  for (int i = 0; i < a.split("").length; i++) {
    if (vowels.contains(a[i])) {
      counterVowelA++;
    }
  }

  int counterVowelB = 0;
  for (int i = 0; i < b.split("").length; i++) {
    if (vowels.contains(b[i])) {
      counterVowelB++;
    }
  }
  return counterVowelA == counterVowelB;
  }
}