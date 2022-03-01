import 'package:integer/integer.dart';

void main() {
  /// A Signed Integer that is bound within the limits of 32 bits
  print(34234324.int32);

  /// An Unsigned Integer that is bound within the limits of 8 bits
  ///
  /// Remember to enclose negative integer literals in parenthesis, or else
  ///  the results will not be as expected
  print((-34234).uint8);

  /// Provide custom bit-width if required like this
  print((-4567233343).intX(22));

  /// Or like this
  print((-4567233343).uintX(48));
}
