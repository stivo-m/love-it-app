import 'package:flutter/foundation.dart';

enum Gender { male, female, other }

extension GenderExt on Gender {
  String get name {
    return describeEnum(this);
  }
}
