class Solution {
  bool strongPasswordCheckerII(String password) {

  String validSpecialChar = r"!@#$%^&*()-+";
  var listOfChars = password.split("");
  var listOfSpecialChars = validSpecialChar.split("");
  int lowerCaseLetterCounter = 0;
  int upperCaseLetterCounter = 0;
  int digitCounter = 0;
  int specialCharCounter = 0;

  bool result = true;
  if (listOfChars.length < 8) {
    return false; 
  }

  for (int i = 0; i < listOfChars.length; i++) {
    if (i > 0 && listOfChars[i] == listOfChars[i - 1]) {
    return false; 
      break;
    }
    if (listOfSpecialChars.contains(listOfChars[i])) {
      specialCharCounter++;
    }
    if (int.tryParse(listOfChars[i]) != null) {
      digitCounter++;
    }
    if (RegExp(r'[A-Z]').hasMatch(listOfChars[i])) {
      upperCaseLetterCounter++;
    }
    if (RegExp(r'[a-z]').hasMatch(listOfChars[i])) {
      lowerCaseLetterCounter++;
    }
  }

  if (lowerCaseLetterCounter < 1 ||
      upperCaseLetterCounter < 1 ||
      digitCounter < 1 ||
      specialCharCounter < 1) {
    return false; 
  }

 return result;

  }
}

