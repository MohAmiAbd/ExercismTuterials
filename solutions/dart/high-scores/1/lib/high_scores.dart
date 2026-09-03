class HighScores {
  List<int> scores;
  late List<int> scoresFortop;
  HighScores(List<int> this.scores) {
    scoresFortop = List.from(scores);
  }

  int latest() {
    return scores.last;
  }

  int personalBest() {
    int temp = scores.first;
    for (int i in scores) {
      if (i > temp) {
        temp = i;
      }
    }
    return temp;
  }

  List<int> personalTopThree() {
    scoresFortop.sort();
    if (scoresFortop.length > 3) {
      List<int> temp = scoresFortop.sublist(scoresFortop.length - 3);
      for (int i = 0; i < temp.length; i++) {
        for (int j = i + 1; j < temp.length; j++) {
          if (temp[i] < temp[j]) {
            int x = temp[j];
            temp[j] = temp[i];
            temp[i] = x;
          }
        }
      }
      return temp;
    } else {
      scoresFortop.sort((a, b) => b.compareTo(a));
      return scoresFortop;
    }
  }
}