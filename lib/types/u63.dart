// ignore_for_file: camel_case_types

part of integer;

/// 63-bit Unsigned Integer
///
/// `0` to `9223372036854775807`
class u63 extends UnsignedInteger {
  u63(int value) : super(value: value.uintX(63));

  u63.integer(integer val) : super(value: val.value.uintX(63));

  factory u63.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u63(int.fromEnvironment(name, defaultValue: defaultValue.uintX(63)));
  }

  u63.parse(String source) : super(value: int.parse(source).uintX(63));

  static u63? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u63(val);
    }
    return null;
  }

  @override
  u63 operator *(integer other) => u63(value * other.value);

  @override
  u63 operator +(integer other) => u63(value + other.value);

  @override
  u63 operator -(integer other) => u63(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u63 operator ~/(integer other) => u63(value ~/ other.value);

  @override
  u63 operator &(integer other) => u63(value & other.value);

  @override
  u63 operator |(integer other) => u63(value | other.value);

  @override
  u63 operator ^(integer other) => u63(value ^ other.value);

  @override
  u63 operator ~() => u63(~value);

  @override
  u63 operator <<(integer other) => u63(value << other.value);

  @override
  u63 operator >>(integer other) => u63(value >> other.value);

  @override
  u63 operator >>>(integer other) => u63(value >>> other.value);

  @override
  u63 modPow(integer exponent, integer modulus) =>
      u63(value.modPow(exponent.value, modulus.value));

  @override
  u63 modInverse(integer modulus) => u63(value.modInverse(modulus.value));

  @override
  u63 gcd(integer other) => u63(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i64 operator -() => i64(-value);

  @override
  u63 round() => u63(value.round());

  @override
  u63 floor() => u63(value.floor());

  @override
  u63 ceil() => u63(value.ceil());

  @override
  u63 truncate() => u63(value.truncate());
}
