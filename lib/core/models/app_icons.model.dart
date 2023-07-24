import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:itemco_test_case_part/config/config.dart';

class AppIcons {
  static final MemoryImage nyTimeLogo =
      MemoryImage(base64Decode(commonImages["nyTimes_logo"] ?? ''));
  static final MemoryImage calendarIcon =
      MemoryImage(base64Decode(commonImages["calendar_icon"] ?? ''));
}
