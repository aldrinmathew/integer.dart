part of integer;

/// Extensions providing getters that return signed integer datatypes
extension SignedIntegerExtension on int {
  /// `2-bit` signed integer
  i2 get i_2 => i2(this);

  /// `4-bit` signed integer
  i4 get i_4 => i4(this);

  /// `8-bit` signed integer
  i8 get i_8 => i8(this);

  /// `16-bit` signed integer
  i16 get i_16 => i16(this);

  /// `32-bit` signed integer
  i32 get i_32 => i32(this);

  /// `64-bit` signed integer
  i64 get i_64 => i64(this);

  /// Signed Integer with custom bit-width
  ix iX(int bits) => ix(bits: bits, value: this);
}

/// Extensions providing getters that return unsigned integer datatypes
extension UnsignedIntegerExtension on int {
  /// `1-bit` unsigned integer
  u1 get u_1 => u1(this);

  /// `2-bit` unsigned integer
  u2 get u_2 => u2(this);

  /// `4-bit` unsigned integer
  u4 get u_4 => u4(this);

  /// `8-bit` unsigned integer
  u8 get u_8 => u8(this);

  /// `16-bit` unsigned integer
  u16 get u_16 => u16(this);

  /// `32-bit` unsigned integer
  u32 get u_32 => u32(this);

  /// `63-bit` unsigned integer
  u63 get u_63 => u63(this);

  /// Unsigned integer with a custom bit-width
  ux uX(int bits) => ux(bits: bits, value: this);
}
