import 'package:integer/integer.dart';

void main() {
  /// A Signed Integer that is bound within the limits of 32 bits
  var v32 = 34234324.i_32;
  print('Conversion of 34234324 to 32-bit signed integer is ' + v32.toString());

  /// Operations
  u16 a = (-982342623).u_16;
  print('Value of 16-bit unsigned integer a is $a');
  print('Addition int: ${a + 862} double: ${a + 862.343}');
  print('Subtraction int: ${a - 36} double: ${a - 36.909}');
  print('Multiplication int: ${a * 6} double: ${a * 6.2345}');
  print('Euclidean Modulo int: ${a % 8} double: ${a % 8.923}');

  /// Division always returns `double` datatype and not the `integer` datatype of the operand
  print('Division int: ${a / 6} double: ${a / 6.2345}');

  /// Bitshift operations only support `integer` and `int` values
  print('Left Shift: ${a << 3}');
  print('Right Shift: ${a >> 9}');
  print('Triple Shift: ${a >>> 5}');

  /// An Unsigned Integer that is bound within the limits of 8 bits
  ///
  /// Remember to enclose negative integer literals in parenthesis, or else
  ///  the results will not be as expected
  print('Conversion of -34234 to unsigned 8-bit integer is ${(-34234).u_8}');

  /// Provide custom bit-width if required like this
  print('Conversion of -4567233343 to signed 22-bit integer is '
      '${(-4567233343).iX(22)}');

  /// Or like this
  print('Conversion of -4567233343 to unsigned 48-bit integer is '
      '${(-4567233343).uX(48)}');
}
