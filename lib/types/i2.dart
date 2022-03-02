// ignore_for_file: camel_case_types

part of integer;

/// 2-bit Signed Integer
///
/// `-2` to `1`
class i2 extends SignedInteger {
  i2(int value) : super(value: value.int2);

  i2.integer(integer val) : super(value: val.value.int2);

  factory i2.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i2(int.fromEnvironment(name, defaultValue: defaultValue.int2));
  }

  i2.parse(String source) : super(value: int.parse(source).int2);

  static i2? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i2(val);
    }
    return null;
  }

  @override
  i2 operator *(integer other) => i2(value * other.value);

  @override
  i2 operator +(integer other) => i2(value + other.value);

  @override
  i2 operator -(integer other) => i2(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i2 operator ~/(integer other) => i2(value ~/ other.value);

  @override
  i2 operator &(integer other) => i2(value & other.value);

  @override
  i2 operator |(integer other) => i2(value | other.value);

  @override
  i2 operator ^(integer other) => i2(value ^ other.value);

  @override
  i2 operator ~() => i2(~value);

  @override
  i2 operator <<(integer other) => i2(value << other.value);

  @override
  i2 operator >>(integer other) => i2(value >> other.value);

  @override
  i2 operator >>>(integer other) => i2(value >>> other.value);

  @override
  i2 modPow(integer exponent, integer modulus) =>
      i2(value.modPow(exponent.value, modulus.value));

  @override
  i2 modInverse(integer modulus) => i2(value.modInverse(modulus.value));

  @override
  i2 gcd(integer other) => i2(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i2 operator -() => i2(-value);

  @override
  u2 abs() => u2(value.abs());

  @override
  i2 round() => i2(value.round());

  @override
  i2 floor() => i2(value.floor());

  @override
  i2 ceil() => i2(value.ceil());

  @override
  i2 truncate() => i2(value.truncate());
}
