// ignore_for_file: camel_case_types

part of integer;

/// Unsigned Integer with custom bitwidth
class ux extends UnsignedInteger {
  int _bits;

  /// Bitwidth of this integer. This is same as [bitLength]
  int get bits => _bits;

  ux({
    required int bits,
    required int value,
  })  : _bits = bits,
        super(value: value.uintX(bits));

  ux.integer(integer val, {required int bits})
      : _bits = bits,
        super(value: val.value.uintX(bits));

  factory ux.fromEnvironment(
    String name, {
    required int bits,
    int defaultValue = 0,
  }) {
    return ux(
      bits: bits,
      value: int.fromEnvironment(name, defaultValue: defaultValue.uintX(bits)),
    );
  }

  ux.parse(String source, {required int bits})
      : _bits = bits,
        super(value: int.parse(source).uintX(bits));

  static ux? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return ux(bits: bits, value: val);
    }
    return null;
  }

  ux copy({int? bits, int? value}) =>
      ux(bits: bits ?? _bits, value: value ?? _value);

  ux ofSameBit(int value) => ux(bits: bits, value: value);

  @override
  ux operator *(integer other) => ofSameBit(value * other.value);

  @override
  ux operator +(integer other) => ofSameBit(value + other.value);

  @override
  ux operator -(integer other) => ofSameBit(value - other.value);

  @override
  double operator /(integer other) => value / other.value;

  @override
  ux operator ~/(integer other) => ofSameBit(value ~/ other.value);

  @override
  ux operator &(integer other) => ofSameBit(value & other.value);

  @override
  ux operator |(integer other) => ofSameBit(value | other.value);

  @override
  ux operator ^(integer other) => ofSameBit(value ^ other.value);

  @override
  ux operator ~() => ofSameBit(~value);

  @override
  ux operator <<(integer other) => ofSameBit(value << other.value);

  @override
  ux operator >>(integer other) => ofSameBit(value >> other.value);

  @override
  ux operator >>>(integer other) => ofSameBit(value >>> other.value);

  @override
  ux modPow(integer exponent, integer modulus) =>
      ofSameBit(value.modPow(exponent.value, modulus.value));

  @override
  ux modInverse(integer modulus) => ofSameBit(value.modInverse(modulus.value));

  @override
  ux gcd(integer other) => ofSameBit(value.gcd(other.value));

  @override
  bool get isEven => value.isEven;

  @override
  bool get isOdd => value.isOdd;

  @override
  ix toSigned(UnsignedInteger bits) => ix(bits: bits.value, value: value);

  @override
  ix operator -() => ix(bits: bits, value: -value);

  @override
  ux round() => ofSameBit(value.round());

  @override
  ux floor() => ofSameBit(value.floor());

  @override
  ux ceil() => ofSameBit(value.ceil());

  @override
  ux truncate() => ofSameBit(value.truncate());
}
