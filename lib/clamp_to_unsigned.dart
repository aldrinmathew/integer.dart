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

  /// Convert the value to 1-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `1`
  int get uint1 {
    return this % 2;
  }

  /// Convert the value to 2-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `3`
  int get uint2 {
    return this % 4;
  }

  /// Convert the value to 4-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `15`
  int get uint4 {
    return this % 16;
  }

  /// Convert the value to 8-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `255`
  int get uint8 {
    return this % 256;
  }

  /// Convert the value to 16-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `65535`
  int get uint16 {
    return this % 65536;
  }

  /// Convert the value to 32-bit Unsigned Integer
  ///
  /// Minimum = `0`
  ///
  /// Maximum = `4294967295`
  int get uint32 {
    return this % 4294967296;
  }
}
