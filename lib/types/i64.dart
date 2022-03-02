// ignore_for_file: camel_case_types

part of integer;

/// 64-bit Signed Integer
///
/// `-9223372036854775808` to `9223372036854775807`
class i64 extends SignedInteger {
  i64(int value) : super(value: value);

  i64.integer(integer val) : super(value: val.value);

  factory i64.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i64(int.fromEnvironment(name, defaultValue: defaultValue));
  }

  i64.parse(String source) : super(value: int.parse(source));

  static i64? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i64(val);
    }
    return null;
  }

  @override
  i64 operator *(integer other) => i64(value * other.value);

  @override
  i64 operator +(integer other) => i64(value + other.value);

  @override
  i64 operator -(integer other) => i64(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i64 operator ~/(integer other) => i64(value ~/ other.value);

  @override
  i64 operator &(integer other) => i64(value & other.value);

  @override
  i64 operator |(integer other) => i64(value | other.value);

  @override
  i64 operator ^(integer other) => i64(value ^ other.value);

  @override
  i64 operator ~() => i64(~value);

  @override
  i64 operator <<(integer other) => i64(value << other.value);

  @override
  i64 operator >>(integer other) => i64(value >> other.value);

  @override
  i64 operator >>>(integer other) => i64(value >>> other.value);

  @override
  i64 modPow(integer exponent, integer modulus) =>
      i64(value.modPow(exponent.value, modulus.value));

  @override
  i64 modInverse(integer modulus) => i64(value.modInverse(modulus.value));

  @override
  i64 gcd(integer other) => i64(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i64 operator -() => i64(-value);

  @override
  u32 abs() => u32(value.abs());

  @override
  i64 round() => i64(value.round());

  @override
  i64 floor() => i64(value.floor());

  @override
  i64 ceil() => i64(value.ceil());

  @override
  i64 truncate() => i64(value.truncate());
}
