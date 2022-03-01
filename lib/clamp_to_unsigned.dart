part of integer;

/// This extension will clamp the integer value to the appropriate bit-width,
///  without negative values.
///
/// Getters for some standard bit-width values are not modularised for minimum
///  overhead.
extension ClampToUnsignedInteger on int {
  /// Convert the value to an Unsigned Integer having a [bitWidth] from 1 to 63
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `(2 ^ bitWidth) - 1`
  int uintX(int bitWidth) {
    if (bitWidth > 63) {
      throw Exception('Maximum bit width allowed is 63');
    } else if (bitWidth < 1) {
      throw Exception('Minimum bit width allowed is 1');
    }
    return this % (1 << bitWidth);
  }
}
