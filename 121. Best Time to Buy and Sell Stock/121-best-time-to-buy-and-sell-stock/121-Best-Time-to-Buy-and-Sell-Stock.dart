class Solution {
  int maxProfit(List<int> prices) {

  int maxProfit = 0;
  int minPrice = 999999999999999999;

  for (int i = 0; i < prices.length; i++) {
    int todayPrice = prices[i];

    if (todayPrice < minPrice) {
      minPrice = todayPrice;
    }
    int sellPrice = (todayPrice - minPrice);

    if (sellPrice > maxProfit) {
      maxProfit = sellPrice;
    }
  }

  return maxProfit;

  }
}