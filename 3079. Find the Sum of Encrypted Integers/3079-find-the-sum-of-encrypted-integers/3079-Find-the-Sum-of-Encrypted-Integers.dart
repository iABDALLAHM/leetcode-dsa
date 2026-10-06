class Solution {
  int sumOfEncryptedInt(List<int> nums) {
     int totalSum = 0;
  for (int i = 0; i < nums.length; i++) {
    totalSum += encrypt(x: nums[i]);
  }
  return totalSum; 
  }
  int encrypt({required int x}) {
  int maxDigit = 0;
  int base = 0;

  while (x > 0) {
    int digit = x % 10;
    if (digit > maxDigit) {
      maxDigit = digit;
    }
    base = base * 10 + 1;
    x ~/= 10;
  }

  return maxDigit * base;
}
}