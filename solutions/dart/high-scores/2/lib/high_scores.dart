class HighScores {
  List<int> scores;
  late List<int> scoresFortop3;
  HighScores(List<int> this.scores) {
    scoresFortop3 = List.from(scores);
  }
  //method for the latest score
  int latest() {
    return scores.last;
  }

  // method for the highest score
  int personalBest() {
    int temp = scores.first;
    for (int i in scores) {
      if (i > temp) {
        temp = i;
      }
    }
    return temp;
  }

  // method for top 3 best scores
  List<int> personalTopThree() {
    scoresFortop3.sort();
    // for when length of list is more than 3.
    if (scoresFortop3.length > 3) {
      List<int> temp = scoresFortop3.sublist(scoresFortop3.length - 3);
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
    } //for when length of list is less than 3.
    else {
      scoresFortop3.sort((a, b) => b.compareTo(a));
      return scoresFortop3;
    }
  }
}