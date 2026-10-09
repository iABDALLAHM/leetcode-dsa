class Solution {
  List<int> recoverOrder(List<int> order, List<int> friends) {
    
  List<int> result = [];

  for (int i = 0; i < order.length; i++) {
    if (friends.contains(order[i])) {
      result.add(order[i]);
    }
  }

  return result;

  }
}




