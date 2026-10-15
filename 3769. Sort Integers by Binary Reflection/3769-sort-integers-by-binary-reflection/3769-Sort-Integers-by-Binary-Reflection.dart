class Solution {
  List<int> sortByReflection(List<int> nums) {
      nums.sort((a, b) {
    int binaryA = int.parse(
      a.toRadixString(2).split("").reversed.join().toString(),
      radix: 2,
    );
    int binaryB = int.parse(
      b.toRadixString(2).split("").reversed.join().toString(),
      radix: 2,
    );
    print(binaryA.compareTo(binaryB));
     if (binaryA == binaryB) {
        return a.compareTo(b);
    }
    return binaryA.compareTo(binaryB);
  });

return nums;
  }
}