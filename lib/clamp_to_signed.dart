part of integer;

/// This extension will clamp the integer value to the appropriate bit-width
///
/// Getters for some standard bit-width values are not modularised for minimum
///  overhead
extension ClampToSignedInteger on int {
  /// Convert the value to a Signed Integer having a [bitWidth] from 2 to 64
  ///
  /// Minimum = `-(2 ^ (bitWidth - 1))`
  ///
  /// Maximum = `(2 ^ (bitWidth - 1)) - 1`
  int intX(int bitWidth) {
    if (bitWidth == 64) {
      return this;
    } else if (bitWidth > 64) {
      throw Exception('Maximum bit width allowed is 64');
    } else if (bitWidth < 2) {
      throw Exception('Minimum bit width allowed is 2');
    }
    int value = this;
    int cap = (1 << bitWidth);
    int start = -(cap ~/ 2);
    int end = (-start) - 1;
    if (value < start) {
      value = value + end + 2;
      value = value.remainder(cap);
      value = end + value;
      return value;
    } else if (value > end) {
      value = value + start;
      value = value.remainder(cap);
      value = start + value;
      return value;
    } else {
      return value;
    }
  }

  /// Convert the value to a 4-bit Signed Integer
  ///
  /// Minimum = `-8`
  ///
  /// Maximum = `7`
  int get int4 {
    int value = this;
    if (value < -8) {
      value = value + 9;
      value = value.remainder(16);
      value = 7 + value;
      return value;
    } else if (value > 7) {
      value = value - 8;
      value = value.remainder(16);
      value = -8 + value;
      return value;
    } else {
      return value;
    }
  }

  /// Convert the value to a 8-bit Signed Integer
  ///
  /// Minimum = `-128`
  ///
  /// Maximum = `127`
  int get int8 {
    int value = this;
    if (value < -128) {
      value = value + 129;
      value = value.remainder(256);
      value = 127 + value;
      return value;
    } else if (value > 127) {
      value = value - 128;
      value = value.remainder(256);
      value = -128 + value;
      return value;
    } else {
      return value;
    }
  }

  /// Convert the value to a 16-bit Signed Integer
  ///
  /// Minimum = `-32768`
  ///
  /// Maximum = `32767`
  int get int16 {
    int value = this;
    if (value < -32768) {
      value = value + 32769;
      value = value.remainder(65536);
      value = 32767 + value;
      return value;
    } else if (value > 32767) {
      value = value - 32768;
      value = value.remainder(65536);
      value = -32768 + value;
      return value;
    } else {
      return value;
    }
  }

  /// Convert the value to a 32-bit Signed Integer
  ///
  /// Minimum = `-2147483648`
  ///
  /// Maximum = `2147483647`
  int get int32 {
    int value = this;
    if (value < -2147483648) {
      value = value + 2147483649;
      value = value.remainder(4294967296);
      value = 2147483647 + value;
      return value;
    } else if (value > 2147483647) {
      value = value - 2147483648;
      value = value.remainder(4294967296);
      value = -2147483648 + value;
      return value;
    } else {
      return value;
    }
  }
}
