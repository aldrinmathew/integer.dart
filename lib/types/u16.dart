// ignore_for_file: camel_case_types

part of integer;

/// 16-bit Unsigned Integer
///
/// `0` to `65535`
class u16 extends UnsignedInteger {
  u16(int value) : super(value: value.uint16);

  u16.integer(integer val) : super(value: val.value.uint16);

  factory u16.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u16(int.fromEnvironment(name, defaultValue: defaultValue.uint16));
  }

  u16.parse(String source) : super(value: int.parse(source).uint16);

  static u16? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u16(val);
    }
    return null;
  }

  @override
  u16 operator *(integer other) => u16(value * other.value);

  @override
  u16 operator +(integer other) => u16(value + other.value);

  @override
  u16 operator -(integer other) => u16(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u16 operator ~/(integer other) => u16(value ~/ other.value);

  @override
  u16 operator &(integer other) => u16(value & other.value);

  @override
  u16 operator |(integer other) => u16(value | other.value);

  @override
  u16 operator ^(integer other) => u16(value ^ other.value);

  @override
  u16 operator ~() => u16(~value);

  @override
  u16 operator <<(integer other) => u16(value << other.value);

  @override
  u16 operator >>(integer other) => u16(value >> other.value);

  @override
  u16 operator >>>(integer other) => u16(value >>> other.value);

  @override
  u16 modPow(integer exponent, integer modulus) =>
      u16(value.modPow(exponent.value, modulus.value));

  @override
  u16 modInverse(integer modulus) => u16(value.modInverse(modulus.value));

  @override
  u16 gcd(integer other) => u16(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i32 operator -() => i32(-value);

  @override
  u16 round() => u16(value.round());

  @override
  u16 floor() => u16(value.floor());

  @override
  u16 ceil() => u16(value.ceil());

  @override
  u16 truncate() => u16(value.truncate());
}
