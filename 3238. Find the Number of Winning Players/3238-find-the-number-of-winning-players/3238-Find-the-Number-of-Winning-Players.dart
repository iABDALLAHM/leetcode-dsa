class Solution {
  int winningPlayerCount(int n, List<List<int>> pick) {
    
  Map<int, Map<int, int>> mapOfMapOfElements = {};

  for (int i = 0; i < pick.length; i++) {
    int currentPlayer = pick[i][0];
    int currentColor = pick[i][1];

    if (!mapOfMapOfElements.containsKey(currentPlayer)) {
      mapOfMapOfElements[currentPlayer] = {};
    }
    Map<int, int> mapOfPlayerBallColors = mapOfMapOfElements[currentPlayer]!;

    if (mapOfPlayerBallColors.containsKey(currentColor)) {
      mapOfPlayerBallColors[currentColor] =
          mapOfPlayerBallColors[currentColor]! + 1;
    } else {
      mapOfPlayerBallColors[currentColor] = 1;
    }
  }


  int numOfWinnerPlayers = 0;

  for (var currentPlayer in mapOfMapOfElements.entries) {
    int currentPlayerKey = currentPlayer.key;
    Map<int, int> currentPlayerMap = currentPlayer.value;
    for (var numOfBallColor in currentPlayerMap.values) {
      if (numOfBallColor > currentPlayerKey) {
        numOfWinnerPlayers++;
        break;
      }
    }
  }

  return numOfWinnerPlayers;

  }
}