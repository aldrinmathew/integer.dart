// ignore_for_file: camel_case_types

part of integer;

/// 1-bit Unsigned Integer
///
/// `0` to `1`
class u1 extends UnsignedInteger {
  u1(int value) : super(value: value.uint1);

  u1.integer(integer val) : super(value: val.value.uint1);

  factory u1.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u1(int.fromEnvironment(name, defaultValue: defaultValue.uint1));
  }

  u1.parse(String source) : super(value: int.parse(source).uint1);

  static u1? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u1(val);
    }
    return null;
  }

  @override
  u1 operator *(integer other) => u1(value * other.value);

  @override
  u1 operator +(integer other) => u1(value + other.value);

  @override
  u1 operator -(integer other) => u1(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u1 operator ~/(integer other) => u1(value ~/ other.value);

  @override
  u1 operator &(integer other) => u1(value & other.value);

  @override
  u1 operator |(integer other) => u1(value | other.value);

  @override
  u1 operator ^(integer other) => u1(value ^ other.value);

  @override
  u1 operator ~() => u1(~value);

  @override
  u1 operator <<(integer other) => u1(value << other.value);

  @override
  u1 operator >>(integer other) => u1(value >> other.value);

  @override
  u1 operator >>>(integer other) => u1(value >>> other.value);

  @override
  u1 modPow(integer exponent, integer modulus) =>
      u1(value.modPow(exponent.value, modulus.value));

  @override
  u1 modInverse(integer modulus) => u1(value.modInverse(modulus.value));

  @override
  u1 gcd(integer other) => u1(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i2 operator -() => i2(-value);

  @override
  u1 round() => u1(value.round());

  @override
  u1 floor() => u1(value.floor());

  @override
  u1 ceil() => u1(value.ceil());

  @override
  u1 truncate() => u1(value.truncate());
}
