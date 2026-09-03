class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    BigInt num1 = BigInt.parse(number);
    final int digits = number.length;
    if (num1 == 0) return true;
    BigInt result = BigInt.zero;
    while (num1 > BigInt.zero) {
      BigInt r = num1.remainder(BigInt.from(10));
      result = result + r.pow(digits);
      num1 ~/= BigInt.from(10);
    }
    return result == BigInt.parse(number);
  }
}

