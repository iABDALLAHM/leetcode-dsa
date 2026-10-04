class Solution {
  int buyChoco(List<int> prices, int money) {


  prices.sort();
  int sumOfTwoElements = prices[0] + prices[1];


   if (sumOfTwoElements <= money) {
    return (money - sumOfTwoElements);
  } 

  return money;

  }
}