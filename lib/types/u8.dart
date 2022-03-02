// ignore_for_file: camel_case_types

part of integer;

/// 8-bit Unsigned Integer
///
/// `0` to `255`
class u8 extends UnsignedInteger {
  u8(int value) : super(value: value.uint8);

  u8.integer(integer val) : super(value: val.value.uint8);

  factory u8.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u8(int.fromEnvironment(name, defaultValue: defaultValue.uint8));
  }

  u8.parse(String source) : super(value: int.parse(source).uint8);

  static u8? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u8(val);
    }
    return null;
  }

  @override
  u8 operator *(integer other) => u8(value * other.value);

  @override
  u8 operator +(integer other) => u8(value + other.value);

  @override
  u8 operator -(integer other) => u8(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u8 operator ~/(integer other) => u8(value ~/ other.value);

  @override
  u8 operator &(integer other) => u8(value & other.value);

  @override
  u8 operator |(integer other) => u8(value | other.value);

  @override
  u8 operator ^(integer other) => u8(value ^ other.value);

  @override
  u8 operator ~() => u8(~value);

  @override
  u8 operator <<(integer other) => u8(value << other.value);

  @override
  u8 operator >>(integer other) => u8(value >> other.value);

  @override
  u8 operator >>>(integer other) => u8(value >>> other.value);

  @override
  u8 modPow(integer exponent, integer modulus) =>
      u8(value.modPow(exponent.value, modulus.value));

  @override
  u8 modInverse(integer modulus) => u8(value.modInverse(modulus.value));

  @override
  u8 gcd(integer other) => u8(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i16 operator -() => i16(-value);

  @override
  u8 round() => u8(value.round());

  @override
  u8 floor() => u8(value.floor());

  @override
  u8 ceil() => u8(value.ceil());

  @override
  u8 truncate() => u8(value.truncate());
}
