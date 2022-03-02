// ignore_for_file: camel_case_types

part of integer;

/// 4-bit Unsigned Integer
///
/// `0` to `15`
class u4 extends UnsignedInteger {
  u4(int value) : super(value: value.uint4);

  u4.integer(integer val) : super(value: val.value.uint4);

  factory u4.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u4(int.fromEnvironment(name, defaultValue: defaultValue.uint4));
  }

  u4.parse(String source) : super(value: int.parse(source).uint4);

  static u4? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u4(val);
    }
    return null;
  }

  @override
  u4 operator *(integer other) => u4(value * other.value);

  @override
  u4 operator +(integer other) => u4(value + other.value);

  @override
  u4 operator -(integer other) => u4(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u4 operator ~/(integer other) => u4(value ~/ other.value);

  @override
  u4 operator &(integer other) => u4(value & other.value);

  @override
  u4 operator |(integer other) => u4(value | other.value);

  @override
  u4 operator ^(integer other) => u4(value ^ other.value);

  @override
  u4 operator ~() => u4(~value);

  @override
  u4 operator <<(integer other) => u4(value << other.value);

  @override
  u4 operator >>(integer other) => u4(value >> other.value);

  @override
  u4 operator >>>(integer other) => u4(value >>> other.value);

  @override
  u4 modPow(integer exponent, integer modulus) =>
      u4(value.modPow(exponent.value, modulus.value));

  @override
  u4 modInverse(integer modulus) => u4(value.modInverse(modulus.value));

  @override
  u4 gcd(integer other) => u4(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i4 operator -() => i4(-value);

  @override
  u4 round() => u4(value.round());

  @override
  u4 floor() => u4(value.floor());

  @override
  u4 ceil() => u4(value.ceil());

  @override
  u4 truncate() => u4(value.truncate());
}
