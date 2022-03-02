// ignore_for_file: camel_case_types

part of integer;

/// 8-bit Signed Integer
///
/// `-128` to `127`
class i8 extends SignedInteger {
  i8(int value) : super(value: value.int8);

  i8.integer(integer val) : super(value: val.value.int8);

  factory i8.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i8(int.fromEnvironment(name, defaultValue: defaultValue.int8));
  }

  i8.parse(String source) : super(value: int.parse(source).int8);

  static i8? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i8(val);
    }
    return null;
  }

  @override
  i8 operator *(integer other) => i8(value * other.value);

  @override
  i8 operator +(integer other) => i8(value + other.value);

  @override
  i8 operator -(integer other) => i8(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i8 operator ~/(integer other) => i8(value ~/ other.value);

  @override
  i8 operator &(integer other) => i8(value & other.value);

  @override
  i8 operator |(integer other) => i8(value | other.value);

  @override
  i8 operator ^(integer other) => i8(value ^ other.value);

  @override
  i8 operator ~() => i8(~value);

  @override
  i8 operator <<(integer other) => i8(value << other.value);

  @override
  i8 operator >>(integer other) => i8(value >> other.value);

  @override
  i8 operator >>>(integer other) => i8(value >>> other.value);

  @override
  i8 modPow(integer exponent, integer modulus) =>
      i8(value.modPow(exponent.value, modulus.value));

  @override
  i8 modInverse(integer modulus) => i8(value.modInverse(modulus.value));

  @override
  i8 gcd(integer other) => i8(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i8 operator -() => i8(-value);

  @override
  u8 abs() => u8(value.abs());

  @override
  i8 round() => i8(value.round());

  @override
  i8 floor() => i8(value.floor());

  @override
  i8 ceil() => i8(value.ceil());

  @override
  i8 truncate() => i8(value.truncate());
}
