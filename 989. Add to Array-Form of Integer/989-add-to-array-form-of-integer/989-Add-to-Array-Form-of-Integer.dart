class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    
  String stringNum = "";
  BigInt newNum = BigInt.from(0);
  for (int i = 0; i < num.length; i++) {
    stringNum += num[i].toString();
  }
  newNum = BigInt.parse(stringNum) + BigInt.from(k);
  print(stringNum);
  var listOfNewNum = newNum.toString().split("");
  List<int> listOfIntNum = [];
  for (int i = 0; i < listOfNewNum.length; i++) {
    listOfIntNum.add(int.parse(listOfNewNum[i]));
  }
  
  return listOfIntNum;
  
 }
}