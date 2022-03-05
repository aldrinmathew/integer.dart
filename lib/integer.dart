/// `integer` library allows you to use custom bit-width integers via getters
/// and datatypes
///
/// Datatypes exposed by this library allows you to seamlessly use operators
/// and functions without worrying about overflow and without having to convert
/// values back to the appropriate formats periodically.
///
/// Remember that the custom bit-width integers are not stored in smaller
/// bit-width variables. This is due to a limitation of Dart's VM.
library integer;

part 'extensions.dart';
part 'types/i2.dart';
part 'types/i4.dart';
part 'types/i8.dart';
part 'types/i16.dart';
part 'types/i32.dart';
part 'types/i64.dart';
part 'types/integer.dart';
part 'types/ix.dart';
part 'types/ux.dart';
part 'types/u1.dart';
part 'types/u2.dart';
part 'types/u4.dart';
part 'types/u8.dart';
part 'types/u16.dart';
part 'types/u32.dart';
part 'types/u63.dart';
