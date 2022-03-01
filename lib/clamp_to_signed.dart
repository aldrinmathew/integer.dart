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
}
