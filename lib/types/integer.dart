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

  integer operator +(integer other);

  integer operator -(integer other);

  double operator /(integer other);

  integer operator ~/(integer other);

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

  SignedInteger operator -();

  int get sign => _value.sign;

  integer round();

  integer floor();

  integer ceil();

  integer truncate();

  double roundToDouble() => _value.roundToDouble();

  double floorToDouble() => _value.floorToDouble();

  double ceilToDouble() => _value.ceilToDouble();

  double truncateToDouble() => _value.truncateToDouble();

  @override
  String toString() => value.toString();

  String toRadixString(int radix) => value.toRadixString(radix);
}

abstract class SignedInteger extends integer {
  SignedInteger({required int value}) : super(value: value);

  UnsignedInteger toUnsigned(UnsignedInteger bits);

  UnsignedInteger abs();
}

abstract class UnsignedInteger extends integer {
  UnsignedInteger({required int value}) : super(value: value);

  SignedInteger toSigned(UnsignedInteger bits);
}
