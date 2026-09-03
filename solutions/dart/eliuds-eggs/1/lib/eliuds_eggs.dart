class EggCounter {
  int count(int eggs) {
    String eggsPlace = eggs.toRadixString(2);
    int eggsC = eggsPlace.split('').where((C) => C == '1').length;
    return eggsC;
  }
}
