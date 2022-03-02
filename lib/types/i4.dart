// ignore_for_file: camel_case_types

part of integer;

/// 4-bit Signed Integer
///
/// `-8` to `7`
class i4 extends SignedInteger {
  i4(int value) : super(value: value.int4);

  i4.integer(integer val) : super(value: val.value.int4);

  factory i4.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i4(int.fromEnvironment(name, defaultValue: defaultValue.int4));
  }

  i4.parse(String source) : super(value: int.parse(source).int4);

  static i4? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i4(val);
    }
    return null;
  }

  @override
  i4 operator *(integer other) => i4(value * other.value);

  @override
  i4 operator +(integer other) => i4(value + other.value);

  @override
  i4 operator -(integer other) => i4(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i4 operator ~/(integer other) => i4(value ~/ other.value);

  @override
  i4 operator &(integer other) => i4(value & other.value);

  @override
  i4 operator |(integer other) => i4(value | other.value);

  @override
  i4 operator ^(integer other) => i4(value ^ other.value);

  @override
  i4 operator ~() => i4(~value);

  @override
  i4 operator <<(integer other) => i4(value << other.value);

  @override
  i4 operator >>(integer other) => i4(value >> other.value);

  @override
  i4 operator >>>(integer other) => i4(value >>> other.value);

  @override
  i4 modPow(integer exponent, integer modulus) =>
      i4(value.modPow(exponent.value, modulus.value));

  @override
  i4 modInverse(integer modulus) => i4(value.modInverse(modulus.value));

  @override
  i4 gcd(integer other) => i4(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i4 operator -() => i4(-value);

  @override
  u4 abs() => u4(value.abs());

  @override
  i4 round() => i4(value.round());

  @override
  i4 floor() => i4(value.floor());

  @override
  i4 ceil() => i4(value.ceil());

  @override
  i4 truncate() => i4(value.truncate());
}
