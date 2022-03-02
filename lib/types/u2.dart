// ignore_for_file: camel_case_types

part of integer;

/// 2-bit Unsigned Integer
///
/// `0` to `3`
class u2 extends UnsignedInteger {
  u2(int value) : super(value: value.uint2);

  u2.integer(integer val) : super(value: val.value.uint2);

  factory u2.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u2(int.fromEnvironment(name, defaultValue: defaultValue.uint2));
  }

  u2.parse(String source) : super(value: int.parse(source).uint2);

  static u2? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u2(val);
    }
    return null;
  }

  @override
  u2 operator *(integer other) => u2(value * other.value);

  @override
  u2 operator +(integer other) => u2(value + other.value);

  @override
  u2 operator -(integer other) => u2(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u2 operator ~/(integer other) => u2(value ~/ other.value);

  @override
  u2 operator &(integer other) => u2(value & other.value);

  @override
  u2 operator |(integer other) => u2(value | other.value);

  @override
  u2 operator ^(integer other) => u2(value ^ other.value);

  @override
  u2 operator ~() => u2(~value);

  @override
  u2 operator <<(integer other) => u2(value << other.value);

  @override
  u2 operator >>(integer other) => u2(value >> other.value);

  @override
  u2 operator >>>(integer other) => u2(value >>> other.value);

  @override
  u2 modPow(integer exponent, integer modulus) =>
      u2(value.modPow(exponent.value, modulus.value));

  @override
  u2 modInverse(integer modulus) => u2(value.modInverse(modulus.value));

  @override
  u2 gcd(integer other) => u2(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i4 operator -() => i4(-value);

  @override
  u2 round() => u2(value.round());

  @override
  u2 floor() => u2(value.floor());

  @override
  u2 ceil() => u2(value.ceil());

  @override
  u2 truncate() => u2(value.truncate());
}
