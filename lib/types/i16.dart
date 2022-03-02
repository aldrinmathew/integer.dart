// ignore_for_file: camel_case_types

part of integer;

/// 16-bit Signed Integer
///
/// `-32768` to `32767`
class i16 extends SignedInteger {
  i16(int value) : super(value: value.int16);

  i16.integer(integer val) : super(value: val.value.int16);

  factory i16.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return i16(int.fromEnvironment(name, defaultValue: defaultValue.int16));
  }

  i16.parse(String source) : super(value: int.parse(source).int16);

  static i16? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return i16(val);
    }
    return null;
  }

  @override
  i16 operator *(integer other) => i16(value * other.value);

  @override
  i16 operator +(integer other) => i16(value + other.value);

  @override
  i16 operator -(integer other) => i16(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  i16 operator ~/(integer other) => i16(value ~/ other.value);

  @override
  i16 operator &(integer other) => i16(value & other.value);

  @override
  i16 operator |(integer other) => i16(value | other.value);

  @override
  i16 operator ^(integer other) => i16(value ^ other.value);

  @override
  i16 operator ~() => i16(~value);

  @override
  i16 operator <<(integer other) => i16(value << other.value);

  @override
  i16 operator >>(integer other) => i16(value >> other.value);

  @override
  i16 operator >>>(integer other) => i16(value >>> other.value);

  @override
  i16 modPow(integer exponent, integer modulus) =>
      i16(value.modPow(exponent.value, modulus.value));

  @override
  i16 modInverse(integer modulus) => i16(value.modInverse(modulus.value));

  @override
  i16 gcd(integer other) => i16(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  i16 operator -() => i16(-value);

  @override
  u16 abs() => u16(value.abs());

  @override
  i16 round() => i16(value.round());

  @override
  i16 floor() => i16(value.floor());

  @override
  i16 ceil() => i16(value.ceil());

  @override
  i16 truncate() => i16(value.truncate());
}
