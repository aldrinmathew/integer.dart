// ignore_for_file: camel_case_types

part of integer;

/// 32-bit Signed Integer
///
/// `-2147483648` to `2147483647`
class i32 extends SignedInteger {
  i32(int value) : super(value: value.int32);

  i32.integer(integer val) : super(value: val.value.int32);

  factory i32.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i32(int.fromEnvironment(name, defaultValue: defaultValue.int32));
  }

  i32.parse(String source) : super(value: int.parse(source).int32);

  static i32? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i32(val);
    }
    return null;
  }

  @override
  i32 operator *(integer other) => i32(value * other.value);

  @override
  i32 operator +(integer other) => i32(value + other.value);

  @override
  i32 operator -(integer other) => i32(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i32 operator ~/(integer other) => i32(value ~/ other.value);

  @override
  i32 operator &(integer other) => i32(value & other.value);

  @override
  i32 operator |(integer other) => i32(value | other.value);

  @override
  i32 operator ^(integer other) => i32(value ^ other.value);

  @override
  i32 operator ~() => i32(~value);

  @override
  i32 operator <<(integer other) => i32(value << other.value);

  @override
  i32 operator >>(integer other) => i32(value >> other.value);

  @override
  i32 operator >>>(integer other) => i32(value >>> other.value);

  @override
  i32 modPow(integer exponent, integer modulus) =>
      i32(value.modPow(exponent.value, modulus.value));

  @override
  i32 modInverse(integer modulus) => i32(value.modInverse(modulus.value));

  @override
  i32 gcd(integer other) => i32(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i32 operator -() => i32(-value);

  @override
  u32 abs() => u32(value.abs());

  @override
  i32 round() => i32(value.round());

  @override
  i32 floor() => i32(value.floor());

  @override
  i32 ceil() => i32(value.ceil());

  @override
  i32 truncate() => i32(value.truncate());
}
