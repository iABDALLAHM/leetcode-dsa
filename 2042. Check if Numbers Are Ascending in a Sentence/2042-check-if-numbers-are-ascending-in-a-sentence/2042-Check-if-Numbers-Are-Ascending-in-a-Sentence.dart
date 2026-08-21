class Solution {
  bool areNumbersAscending(String s) {
      List<String> listOfWords = s.split(" ");
  print(listOfWords);
  List<int> numbers = [];

  for (int i = 0; i < listOfWords.length; i++) {
    if (int.tryParse(listOfWords[i]) != null) {
      numbers.add(int.parse(listOfWords[i]));
    }
  }
  print(numbers);

  bool result = true;

  for (int i = 0; i < numbers.length; i++) {
    if (i > 0 && numbers[i] <= numbers[i - 1]) {
      result = false;
    }
  }

  return result;

  }
}