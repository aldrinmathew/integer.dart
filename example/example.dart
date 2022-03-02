import 'package:integer/integer.dart';

void main() {
  /// A Signed Integer that is bound within the limits of 32 bits
  print(34234324.i_32);

  /// An Unsigned Integer that is bound within the limits of 8 bits
  ///
  /// Remember to enclose negative integer literals in parenthesis, or else
  ///  the results will not be as expected
  print((-34234).u_8);

  /// Provide custom bit-width if required like this
  print((-4567233343).iX(22));

  /// Or like this
  print((-4567233343).uX(48));
}
