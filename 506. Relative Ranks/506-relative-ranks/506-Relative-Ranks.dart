class Solution {
  List<String> findRelativeRanks(List<int> score) {
    
  List<int> sortedScores = List.from(score)..sort((a, b) => b.compareTo(a));

  Map<int, String> rankMap = {};

  for (int i = 0; i < sortedScores.length; i++) {
    if (i == 0) {
      rankMap[sortedScores[i]] = "Gold Medal";
    } else if (i == 1) {
      rankMap[sortedScores[i]] = "Silver Medal";
    } else if (i == 2) {
      rankMap[sortedScores[i]] = "Bronze Medal";
    } else {
      rankMap[sortedScores[i]] = "${i + 1}";
    }
  }

  return score.map((ele) => rankMap[ele] ?? "").toList();

  }
}