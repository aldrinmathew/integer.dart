// ignore_for_file: camel_case_types

part of integer;

/// Unsigned Integer with custom bitwidth
class ux extends integer {
  int _bits;

  /// Bitwidth of this integer. This is same as [bitLength]
  int get bits => _bits;

  ux({
    required int bits,
    required int value,
  })  : _bits = bits,
        super(value: value);

  factory ux.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return ux(
      bits: bits,
      value: int.fromEnvironment(name, defaultValue: defaultValue),
    );
  }

  ux.parse(this._bits, String source) : super(value: int.parse(source));

  @override
  ux operator *(integer other) {
    _value = (value * other.value).uintX(bits);
    return this;
  }

  @override
  ux operator &(integer other) {
    _value = (value & other.value).uintX(bits);
    return this;
  }

  @override
  ux operator |(integer other) {
    _value = (value | other.value).uintX(bits);
    return this;
  }

  @override
  ux operator ^(integer other) {
    _value = (value ^ other.value).uintX(bits);
    return this;
  }

  @override
  ux operator ~() {
    _value = (~value).uintX(bits);
    return this;
  }

  @override
  ux operator <<(integer other) {
    _value = (value << other.value).uintX(bits);
    return this;
  }

  @override
  ux operator >>(integer other) {
    _value = (value >> other.value).uintX(bits);
    return this;
  }

  @override
  ux operator >>>(integer other) {
    _value = (value >>> other.value).uintX(bits);
    return this;
  }

  @override
  ux modPow(integer exponent, integer modulus) {
    _value = (value.modPow(exponent.value, modulus.value)).uintX(bits);
    return this;
  }

  @override
  ux modInverse(integer modulus) {
    _value = (value.modInverse(modulus.value)).uintX(bits);
    return this;
  }

  @override
  ux gcd(integer other) {
    _value = (value.gcd(other.value)).uintX(bits);
    return this;
  }

  @override
  bool get isEven => _value.isEven;

  @override
  bool get isOdd => _value.isOdd;

  int get bitLength => _bits;

  @override
  ux toUnsigned(integer width) {
    _value = value.toUnsigned(width.value).uintX(bits);
    return this;
  }

  @override
  ux toSigned(integer width) {
    _value = value.toSigned(width.value).uintX(bits);
    return this;
  }

  @override
  ix operator -() {
    _value = (-_value).intX(bits);
    return ix(bits: bits, value: value);
  }

  @override
  ux abs() {
    _value = _value.abs().uintX(bits);
    return this;
  }

  @override
  ux round() {
    _value = _value.round().uintX(bits);
    return this;
  }

  @override
  ux floor() {
    _value = _value.floor().uintX(bits);
    return this;
  }

  @override
  ux ceil() {
    _value = _value.ceil().uintX(bits);
    return this;
  }

  @override
  ux truncate() {
    _value = _value.truncate().uintX(bits);
    return this;
  }
}
