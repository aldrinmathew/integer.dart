## **`integer`**

Dart's native integers in custom bitwidth integer format. There are getters for `int`, to get the appropriate datatypes you need.

`i2`, `i4`, `i8`, `i16`, `i32` and `i64` are the standard signed integer datatypes and `u1`, `u2`, `u4`, `u8`, `u16`, `u32`, `u63` are the standard unsigned integer datatypes exposed by this library. If you want to use a custom bit-width integer format, you can use the `ix` and `ux` datatypes.

All operations and functions can be seamlessly used with other `integer` types, and native `int`, `double` datatypes. Remember that all integer datatypes provided do not actually allocate different bit-widths in memory. This is due to the limitation of Dart's VM.

```dart
/// Use the constructor
i32(32423445435)
/// or use getters
32423445435.i_32 // -1936292933
```

Remember to enclose negative integer literals like -34644 or -89 in parenthesis to tell Dart that the getters should be called for the entire literal. Like this

```dart
(-98723447).u_16 // 39305
```

### Operations

All operations are compatible with native `int` and are also compatible with all signed and unsigned `integer` datatypes.

```dart
u16 a = (-982342623).u_16;
print('Value of 16-bit unsigned integer a is $a');
print('Addition int: ${a + 862} double: ${a + 862.343}');
print('Subtraction int: ${a - 36} double: ${a - 36.909}');
print('Multiplication int: ${a * 6} double: ${a * 6.2345}');
print('Division int: ${a / 6} double: ${a / 6.2345}');
print('Euclidean Modulo int: ${a % 8} double: ${a % 8.923}');
```

Bitshift operations only support `integer` and `int` values
```dart
print('Left Shift: ${a << 3}');
print('Right Shift: ${a >> 9}');
print('Triple Shift: ${a >>> 5}');
```

If `double` values are used in operations of `integer` variables, the value is truncated after the operation.

### Custom Bit-Width

Provide a custom bit-width to convert the integer to that format using `ix` and `ux` datatypes

```dart
/// 22-bit Signed Integer
(-4567233343).iX(22) // 363713

/// 48-bit Unsigned Integer
(-4567233343).uX(48) // 281470409477313
```