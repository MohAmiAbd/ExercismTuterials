class DifferenceOfSquares {
  int squareOfSum(int number) {
    int sum1 = 0;
    for (int i = 1; i <= number; i++) {
    sum1 += i;
    }
    sum1 = sum1 * sum1;
    return sum1;
  }
  int sumOfSquares(int number) {
    int sum2 = 0;
    for (int i = 1; i <= number; i++) {
      sum2 += i * i;
    }
    return sum2;
  }
  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
