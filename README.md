## Integer

Use Dart's native integers in custom bitwidth integer format.

```dart
32423445435.int32 /// -1936292933
```

Remember to enclose negative integer literals like -34644 or -89 in parenthesis to tell Dart that the getters should be called for the entire literal. Like this

```dart
(-98723447).uint16 /// 39305
```

## Custom Bit-Width

Provide a custom bit-width to convert the integer to that format

```dart
(-4567233343).intX(22) /// 363713
```

```dart
(-4567233343).uintX(48) /// 281470409477313
```