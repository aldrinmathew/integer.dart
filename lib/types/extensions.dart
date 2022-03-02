part of integer;

extension SignedIntegerExtension on int {
  i2 get si2 => i2(this);
  i4 get si4 => i4(this);
  i8 get si8 => i8(this);
  i16 get si16 => i16(this);
  i32 get si32 => i32(this);
  i64 get si64 => i64(this);
  ix iX(int bits) => ix(bits: bits, value: this);
}

extension UnsignedIntegerExtension on int {
  u1 get ui1 => u1(this);
  u2 get ui2 => u2(this);
  u4 get ui4 => u4(this);
  u8 get ui8 => u8(this);
  u16 get ui16 => u16(this);
  u32 get ui32 => u32(this);
  u63 get ui63 => u63(this);
  ux uX(int bits) => ux(bits: bits, value: this);
}
