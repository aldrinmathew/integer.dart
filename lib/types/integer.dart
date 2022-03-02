// ignore_for_file: camel_case_types

part of integer;

/// Baseclass for custom bit-width integers
abstract class integer {
  integer({required int value}) : _value = value;

  // ignore: prefer_final_fields
  int _value;

  /// Value of the integer
  int get value => _value;

  integer operator *(integer other);

  integer operator &(integer other);

  integer operator |(integer other);

  integer operator ^(integer other);

  integer operator ~();

  integer operator <<(integer other);

  integer operator >>(integer other);

  integer operator >>>(integer other);

  integer modPow(integer exponent, integer modulus);

  integer modInverse(integer modulus);

  integer gcd(integer other);

  bool get isEven => _value.isEven;

  bool get isOdd => _value.isOdd;

  integer toUnsigned(integer width);

  integer toSigned(integer width);

  int get sign => _value.sign;

  integer round();

  integer floor();

  integer ceil();

  integer truncate();

  double roundToDouble() {
    return _value.roundToDouble();
  }

  double floorToDouble() {
    return _value.floorToDouble();
  }

  double ceilToDouble() {
    return _value.ceilToDouble();
  }

  double truncateToDouble() {
    return _value.truncateToDouble();
  }

  @override
  String toString() {
    return value.toString();
  }

  String toRadixString(int radix) {
    return value.toRadixString(radix);
  }
}
