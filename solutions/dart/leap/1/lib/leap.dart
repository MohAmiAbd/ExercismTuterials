class Leap {
  bool leapYear(int year) =>
      year.remainder(4) == 0 &&
      (year.remainder(100) != 0 || year.remainder(400) == 0);
}