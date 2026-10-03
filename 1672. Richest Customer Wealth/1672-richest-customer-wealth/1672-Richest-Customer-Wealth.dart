class Solution {
  int maximumWealth(List<List<int>> accounts) {
      int richCustomer = 0;

  for (int i = 0; i < accounts.length; i++) {
    List<int> currentList = accounts[i];
    int currentWealth = 0;

    for (int j = 0; j < currentList.length; j++) {
      currentWealth += currentList[j];
      if (currentWealth >= richCustomer) {
        richCustomer = currentWealth;
      }
    }
  }
  return richCustomer;
  }
}