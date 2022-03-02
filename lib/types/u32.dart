// ignore_for_file: camel_case_types

part of integer;

/// 32-bit Unsigned Integer
///
/// `0` to `4294967295`
class u32 extends UnsignedInteger {
  u32(int value) : super(value: value.uint32);

  u32.integer(integer val) : super(value: val.value.uint32);

  factory u32.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return u32(int.fromEnvironment(name, defaultValue: defaultValue.uint32));
  }

  u32.parse(String source) : super(value: int.parse(source).uint32);

  static u32? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return u32(val);
    }
    return null;
  }

  @override
  u32 operator *(integer other) => u32(value * other.value);

  @override
  u32 operator +(integer other) => u32(value + other.value);

  @override
  u32 operator -(integer other) => u32(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  u32 operator ~/(integer other) => u32(value ~/ other.value);

  @override
  u32 operator &(integer other) => u32(value & other.value);

  @override
  u32 operator |(integer other) => u32(value | other.value);

  @override
  u32 operator ^(integer other) => u32(value ^ other.value);

  @override
  u32 operator ~() => u32(~value);

  @override
  u32 operator <<(integer other) => u32(value << other.value);

  @override
  u32 operator >>(integer other) => u32(value >> other.value);

  @override
  u32 operator >>>(integer other) => u32(value >>> other.value);

  @override
  u32 modPow(integer exponent, integer modulus) =>
      u32(value.modPow(exponent.value, modulus.value));

  @override
  u32 modInverse(integer modulus) => u32(value.modInverse(modulus.value));

  @override
  u32 gcd(integer other) => u32(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  i64 operator -() => i64(-value);

  @override
  u32 round() => u32(value.round());

  @override
  u32 floor() => u32(value.floor());

  @override
  u32 ceil() => u32(value.ceil());

  @override
  u32 truncate() => u32(value.truncate());
}
