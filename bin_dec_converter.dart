class Converter {
  int decimalToBinary(int decimal) {
    int binary = 0;
    int i = 1;
    while (decimal > 0) {
      binary = binary + (decimal % 2) * i;

      decimal = (decimal / 2).floor();

      i = i * 10;
    }
    return binary;
  }

  int binaryToDecimal(int binary) {
    int decimal = 0;
    int lastDigit;
    int i = 1;
    while (binary > 0) {
      lastDigit = binary % 10;
      binary = (binary / 10).floor();
      decimal += lastDigit * i;
      i = i * 2;
    }
    return decimal;
  }
}
