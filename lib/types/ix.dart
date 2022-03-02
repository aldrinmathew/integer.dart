// ignore_for_file: camel_case_types

part of integer;

/// Signed Integer with custom bit-width
class ix extends integer {
  int _bits;

  /// Bitwidth of this integer. This is same as [bitLength]
  int get bits => _bits;

  ix({
    required int bits,
    required int value,
  })  : _bits = bits,
        super(value: value);

  factory ix.fromEnvironment(int bits, String name, {int defaultValue = 0}) {
    return ix(
      bits: bits,
      value: int.fromEnvironment(name, defaultValue: defaultValue),
    );
  }

  ix.parse(this._bits, String source) : super(value: int.parse(source));

  static ix? tryParse(int bits, String source) {
    int? val = int.tryParse(source);
    if (val != null) {
      return ix(bits: bits, value: val);
    }
    return null;
  }

  @override
  ix operator *(integer other) {
    _value = (value * other.value).intX(bits);
    return this;
  }

  @override
  ix operator &(integer other) {
    _value = (value & other.value).intX(bits);
    return this;
  }

  @override
  ix operator |(integer other) {
    _value = (value | other.value).intX(bits);
    return this;
  }

  @override
  ix operator ^(integer other) {
    _value = (value ^ other.value).intX(bits);
    return this;
  }

  @override
  ix operator ~() {
    _value = (~value).intX(bits);
    return this;
  }

  @override
  ix operator <<(integer other) {
    _value = (value << other.value).intX(bits);
    return this;
  }

  @override
  ix operator >>(integer other) {
    _value = (value >> other.value).intX(bits);
    return this;
  }

  @override
  ix operator >>>(integer other) {
    _value = (value >>> other.value).intX(bits);
    return this;
  }

  @override
  ix modPow(integer exponent, integer modulus) {
    _value = (value.modPow(exponent.value, modulus.value)).intX(bits);
    return this;
  }

  @override
  ix modInverse(integer modulus) {
    _value = (value.modInverse(modulus.value)).intX(bits);
    return this;
  }

  @override
  ix gcd(integer other) {
    _value = (value.gcd(other.value)).intX(bits);
    return this;
  }

  @override
  bool get isEven => _value.isEven;

  @override
  bool get isOdd => _value.isOdd;

  int get bitLength => _bits;

  @override
  ix toUnsigned(integer width) {
    _value = value.toUnsigned(width.value).intX(bits);
    return this;
  }

  @override
  ix toSigned(integer width) {
    _value = value.toSigned(width.value).intX(bits);
    return this;
  }

  @override
  ix operator -() {
    _value = (-_value).intX(bits);
    return this;
  }

  @override
  ix round() {
    _value = _value.round().intX(bits);
    return this;
  }

  @override
  ix floor() {
    _value = _value.floor().intX(bits);
    return this;
  }

  @override
  ix ceil() {
    _value = _value.ceil().intX(bits);
    return this;
  }

  @override
  ix truncate() {
    _value = _value.truncate().intX(bits);
    return this;
  }

  @override
  double roundToDouble() {
    return _value.roundToDouble();
  }

  @override
  double floorToDouble() {
    return _value.floorToDouble();
  }

  @override
  double ceilToDouble() {
    return _value.ceilToDouble();
  }

  @override
  double truncateToDouble() {
    return _value.truncateToDouble();
  }
}
