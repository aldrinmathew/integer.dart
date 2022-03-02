// ignore_for_file: camel_case_types

part of integer;

/// Signed Integer with custom bit-width
class ix extends SignedInteger {
  int _bits;

  /// Bitwidth of this integer. This is same as [bitLength]
  int get bits => _bits;

  ix({
    required int bits,
    required int value,
  })  : _bits = bits,
        super(value: value.intX(bits));

  ix.integer(integer val, {required int bits})
      : _bits = bits,
        super(value: val.value.intX(bits));

  factory ix.fromEnvironment(
    String name, {
    required int bits,
    int defaultValue = 0,
  }) {
    return ix(
      bits: bits,
      value: int.fromEnvironment(name, defaultValue: defaultValue.intX(bits)),
    );
  }

  ix.parse(String source, {required int bits})
      : _bits = bits,
        super(value: int.parse(source).intX(bits));

  static ix? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return ix(bits: bits, value: val);
    }
    return null;
  }

  ix copy({int? bits, int? value}) =>
      ix(bits: bits ?? _bits, value: value ?? _value);

  ix ofSameBit(int value) => ix(bits: bits, value: value);

  @override
  ix operator *(integer other) => ofSameBit(value * other.value);

  @override
  ix operator +(integer other) => ofSameBit(value + other.value);

  @override
  ix operator -(integer other) => ofSameBit(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  ix operator ~/(integer other) => ofSameBit(value ~/ other.value);

  @override
  ix operator &(integer other) => ofSameBit(value & other.value);

  @override
  ix operator |(integer other) => ofSameBit(value | other.value);

  @override
  ix operator ^(integer other) => ofSameBit(value ^ other.value);

  @override
  ix operator ~() => ofSameBit(~value);

  @override
  ix operator <<(integer other) => ofSameBit(value << other.value);

  @override
  ix operator >>(integer other) => ofSameBit(value >> other.value);

  @override
  ix operator >>>(integer other) => ofSameBit(value >>> other.value);

  @override
  ix modPow(integer exponent, integer modulus) =>
      ofSameBit(value.modPow(exponent.value, modulus.value));

  @override
  ix modInverse(integer modulus) => ofSameBit(value.modInverse(modulus.value));

  @override
  ix gcd(integer other) => ofSameBit(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ux toUnsigned(UnsignedInteger bits) => ux(bits: bits.value, value: value);

  @override
  ix operator -() => ofSameBit(-value);

  @override
  ux abs() => ux(bits: (bits ~/ 2), value: value.abs());

  @override
  ix round() => ofSameBit(value.round());

  @override
  ix floor() => ofSameBit(value.floor());

  @override
  ix ceil() => ofSameBit(value.ceil());

  @override
  ix truncate() => ofSameBit(value.truncate());
}
