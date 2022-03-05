// ignore_for_file: camel_case_types

part of integer;

/// Baseclass for custom bit-width integers
abstract class integer implements Comparable<integer> {
  /// Create an integer value
  integer({required int value})
      : hashCode = value,
        _value = value;

  /// `Private` Value of the integer
  // ignore: prefer_final_fields
  int _value;

  /// Value of the integer
  int get value => _value;

  /// Multiplies this integer by `other`.
  ///
  /// If the `other` number is `double`, the value is truncated after
  ///  multiplication
  ///
  /// Returns `integer`
  integer operator *(dynamic other);

  /// Adds `other` to this number.
  ///
  /// If the `other` number is `double`, the value is truncated after
  ///  addition
  ///
  /// Returns `integer`
  integer operator +(dynamic other);

  /// Subtracts `other` from this number.
  ///
  /// If the `other` number is `double`, the value is truncated after
  ///  subtraction
  ///
  /// Returns `integer`
  integer operator -(dynamic other);

  /// Divides this number by `other`.
  ///
  /// Returns `double`
  double operator /(dynamic other) {
    if (other is integer) {
      return value / other.value;
    } else if (other is int) {
      return value / other;
    } else if (other is double) {
      return value / other;
    } else {
      throw Exception('Invalid type for operand ${other.runtimeType}');
    }
  }

  /// Truncating division operator.
  ///
  /// Performs truncating division of this number by [other].
  /// Truncating division is division where a fractional result
  /// is converted to an integer by rounding towards zero.
  ///
  /// If both operands are [int]s, then [other] must not be zero.
  /// Then `a ~/ b` corresponds to `a.remainder(b)`
  /// such that `a == (a ~/ b) * b + a.remainder(b)`.
  ///
  /// `a ~/ b` is equivalent to `(a / b).truncate()`.
  /// This means that the intermediate result of the double division
  /// must be a finite integer (not an infinity or [double.nan]).
  ///
  /// Returns `integer`
  integer operator ~/(dynamic other);

  /// Euclidean modulo of this number by [other].
  ///
  /// Returns the remainder of the Euclidean division.
  /// The Euclidean division of two integers `a` and `b`
  /// yields two integers `q` and `r` such that
  /// `a == b * q + r` and `0 <= r < b.abs()`.
  ///
  /// The Euclidean division is only defined for integers, but can be easily
  /// extended to work with doubles. In that case, `q` is still an integer,
  /// but `r` may have a non-integer value that still satisfies `0 <= r < |b|`.
  ///
  /// The sign of the returned value `r` is always positive.
  ///
  /// See [remainder] for the remainder of the truncating division.
  ///
  /// Returns `integer`
  integer operator %(dynamic other);

  /// The remainder of the truncating division of `this` by [other].
  ///
  /// The result `r` of this operation satisfies:
  /// `this == (this ~/ other) * other + r`.
  /// As a consequence, the remainder `r` has the same sign as the divider
  /// `this`.
  integer remainder(dynamic other);

  /// Bit-wise and operator.
  ///
  /// Treating both `this` and [other] as sufficiently large two's component
  /// integers, the result is a number with only the bits set that are set in
  /// both `this` and [other]
  ///
  /// If both operands are negative, the result is negative, otherwise
  /// the result is non-negative.
  ///
  /// Returns `integer`
  integer operator &(dynamic other);

  /// Bit-wise or operator.
  ///
  /// Treating both `this` and [other] as sufficiently large two's component
  /// integers, the result is a number with the bits set that are set in either
  /// of `this` and [other]
  ///
  /// If both operands are non-negative, the result is non-negative,
  /// otherwise the result is negative.
  ///
  /// Returns `integer`
  integer operator |(dynamic other);

  /// Bit-wise exclusive-or operator.
  ///
  /// Treating both `this` and [other] as sufficiently large two's component
  /// integers, the result is a number with the bits set that are set in one,
  /// but not both, of `this` and [other]
  ///
  /// If the operands have the same sign, the result is non-negative,
  /// otherwise the result is negative.
  ///
  /// Returns `integer`
  integer operator ^(dynamic other);

  /// The bit-wise negate operator.
  ///
  /// Treating `this` as a sufficiently large two's component integer,
  /// the result is a number with the opposite bits set.
  ///
  /// This maps any integer `x` to `-x - 1`.
  ///
  /// Returns `integer`
  signed operator ~();

  /// Shift the bits of this integer to the left by [shiftAmount].
  ///
  /// Shifting to the left makes the number larger, effectively multiplying
  /// the number by `pow(2, shiftIndex)`.
  ///
  /// There is no limit on the size of the result. It may be relevant to
  /// limit intermediate values by using the "and" operator with a suitable
  /// mask.
  ///
  /// It is an error if [shiftAmount] is negative.
  ///
  /// Returns `integer`
  integer operator <<(dynamic other);

  /// Shift the bits of this integer to the right by [shiftAmount].
  ///
  /// Shifting to the right makes the number smaller and drops the least
  /// significant bits, effectively doing an integer division by
  /// `pow(2, shiftIndex)`.
  ///
  /// It is an error if [shiftAmount] is negative.
  ///
  /// Returns `integer`
  integer operator >>(dynamic other);

  /// Bitwise unsigned right shift by [shiftAmount] bits.
  ///
  /// The least significant [shiftAmount] bits are dropped,
  /// the remaining bits (if any) are shifted down,
  /// and zero-bits are shifted in as the new most significant bits.
  ///
  /// The [shiftAmount] must be non-negative.
  ///
  /// Returns `integer`
  integer operator >>>(dynamic other);

  /// Whether this number is numerically smaller than [other].
  ///
  /// Returns true if this number is smaller than [other]. Returns false if
  /// this number is greater than or equal to [other] or if either value is
  /// a NaN value like [double.nan].
  bool operator <(dynamic other) {
    if (other is integer) {
      return value < other.value;
    } else if (other is int || other is double) {
      return value < other;
    } else {
      throw Exception('Invalid type for operand ${other.runtimeType}');
    }
  }

  /// Whether this number is numerically greater than [other].
  ///
  /// Returns true if this number is greater than [other]. Returns false if
  /// this number is smaller than or equal to [other] or if either value is
  /// a NaN value like [double.nan].
  bool operator >(dynamic other) {
    if (other is integer) {
      return value > other.value;
    } else if (other is int || other is double) {
      return value > other;
    } else {
      throw Exception('Invalid type for operand ${other.runtimeType}');
    }
  }

  /// Whether this number is numerically smaller than or equal to [other].
  ///
  /// Returns true if this number is smaller than or equal to [other]. Returns
  /// false if this number is greater than [other] or if either value is a NaN
  /// value like [double.nan].
  bool operator <=(dynamic other) {
    if (other is integer) {
      return value <= other.value;
    } else if (other is int || other is double) {
      return value <= other;
    } else {
      throw Exception('Invalid type for operand ${other.runtimeType}');
    }
  }

  /// Whether this number is numerically greater than or equal to [other].
  ///
  /// Returns true if this number is greater than or equal to [other]. Returns
  /// false if this number is smaller than [other] or if either value is a NaN
  /// value like [double.nan].
  bool operator >=(dynamic other) {
    if (other is integer) {
      return value >= other.value;
    } else if (other is int || other is double) {
      return value >= other;
    } else {
      throw Exception('Invalid type for operand ${other.runtimeType}');
    }
  }

  /// Test whether this value is numerically equal to other.
  ///
  /// If one operand is a [double] and the other is an [int], they are equal if
  /// the double has an integer value (finite with no fractional part) and the
  /// numbers have the same numerical value.
  ///
  /// If both operands are integers, they are equal if they have the same value.
  ///
  /// Returns false if [other] is not a [num].
  @override
  bool operator ==(Object other) {
    if (other is integer) {
      return (other.value == value);
    } else if (other is int || other is double) {
      return other == value;
    } else {
      return false;
    }
  }

  /// The hash code for this object.
  ///
  /// A hash code is a single integer which represents the state of the object
  /// that affects [operator ==] comparisons.
  ///
  /// All objects have hash codes. The default hash code implemented by
  /// [Object] represents only the identity of the object, the same way as the default [operator ==] implementation only considers objects equal if they are identical (see [identityHashCode]).
  ///
  /// If [operator ==] is overridden to use the object state instead, the hash
  /// code must also be changed to represent that state, otherwise the object
  /// cannot be used in hash based data structures like the default [Set] and
  /// [Map] implementations.
  ///
  /// Hash codes must be the same for objects that are equal to each other
  /// according to [operator ==]. The hash code of an object should only change
  /// if the object changes in a way that affects equality. There are no
  /// further requirements for the hash codes. They need not be consistent
  /// between executions of the same program and there are no distribution
  /// guarantees.
  ///
  /// Objects that are not equal are allowed to have the same hash code. It is
  /// even technically allowed that all instances have the same hash code, but
  /// if clashes happen too often, it may reduce the efficiency of hash-based
  /// data structures like [HashSet] or [HashMap].
  ///
  /// If a subclass overrides [hashCode], it should override the [operator ==]
  /// operator as well to maintain consistency.
  @override
  int hashCode;

  /// Returns this integer to the power of [exponent] modulo [modulus].
  ///
  /// The [exponent] must be non-negative and [modulus] must be positive.
  integer modPow(unsigned exponent, unsigned modulus);

  /// Returns the modular multiplicative inverse of this integer
  /// modulo [modulus].
  ///
  /// The [modulus] must be positive.
  ///
  /// It is an error if no modular inverse exists.
  integer modInverse(unsigned modulus);

  /// Returns the modular multiplicative inverse of this integer
  /// modulo [modulus].
  ///
  /// The [modulus] must be positive.
  ///
  /// It is an error if no modular inverse exists.
  integer gcd(integer other);

  /// Returns true if and only if this integer is even.
  bool get isEven => value.isEven;

  /// Returns true if and only if this integer is odd.
  bool get isOdd => value.isOdd;

  /// Return the negative value of this integer.
  ///
  /// The result of negating an integer always has the opposite sign, except
  /// for zero, which is its own negation.
  signed operator -();

  /// Returns the sign of this integer.
  ///
  /// Returns 0 for zero, -1 for values less than zero and +1 for values greater than zero.
  int get sign => value.sign;

  /// Returns `this.toDouble()`.
  double roundToDouble() => _value.roundToDouble();

  /// Returns `this.toDouble()`.
  double floorToDouble() => _value.floorToDouble();

  /// Returns `this.toDouble()`.
  double ceilToDouble() => _value.ceilToDouble();

  /// Returns `this.toDouble()`.
  double truncateToDouble() => _value.truncateToDouble();

  /// Returns a string representation of this integer.
  ///
  /// The returned string is parsable by [parse]. For any int i, it is
  /// guaranteed that `i == int.parse(i.toString())`.
  @override
  String toString() => value.toString();

  /// Converts [this] to a string representation in the given [radix].
  ///
  /// In the string representation, lower-case letters are used for digits
  /// above '9', with 'a' being 10 and 'z' being 35.
  ///
  /// The [radix] argument must be an integer in the range 2 to 36.
  String toRadixString(int radix) => value.toRadixString(radix);

  /// Compares this object to another object.
  ///
  /// Returns a value like a [Comparator] when comparing this to [other]. That
  /// is, it returns a negative integer if this is ordered before [other], a
  /// positive integer if this is ordered after [other], and zero if this and
  /// [other] are ordered together.
  ///
  /// The [other] argument must be a value that is comparable to this object.
  @override
  int compareTo(integer other) {
    if (other.value > value) {
      return 1;
    } else if (other.value < value) {
      return -1;
    } else {
      return 0;
    }
  }
}

/// `signed` represent an signed integer. This is the base class for
///  all signed integer datatypes
///
/// This abstraction doesn't
///  tell you about the bit-width of the integer
abstract class signed extends integer {
  /// `signed` represent an signed integer. This is the base class for
  ///  all signed integer datatypes
  ///
  /// This abstraction doesn't
  ///  tell you about the bit-width of the integer
  signed({required int value}) : super(value: value);

  /// Returns the absolute value of this integer.
  ///
  /// For any integer `value`,
  /// the result is the same as `value < 0 ? -value : value`.
  unsigned abs();
}

/// `unsigned` represent an unsigned integer. This is the base class for
///  all unsigned integer datatypes
///
/// This abstraction doesn't
///  tell you about the bit-width of the integer
abstract class unsigned extends integer {
  /// `unsigned` represent an unsigned integer. This is the base class for
  ///  all unsigned integer datatypes
  ///
  /// This abstraction doesn't
  ///  tell you about the bit-width of the integer
  unsigned({required int value}) : super(value: value);
}
