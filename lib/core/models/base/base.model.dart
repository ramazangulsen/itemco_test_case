import 'dart:convert';
import 'package:flutter/material.dart';

abstract class BaseModel {
  Map<String, dynamic> toMap();

  static bool boolConverter(dynamic value, {bool fallbackValue = false}) {
    if (value == null || value.toString().isEmpty) return fallbackValue;
    if (value.runtimeType == bool) return value;
    return value == 1;
  }

  static Map<String, dynamic> mapConverter(
    dynamic value, {
    Map<String, dynamic> fallbackValue = const {},
  }) {
    if (value == null) return fallbackValue;
    if (value.runtimeType == String) {
      if (value.toString().contains("{")) {
        return json.decode(value);
      }

      return {value: value};
    }
    return Map.from(value);
  }

  static List stringToList(String value) {
    if (value.isEmpty) return List.empty();
    return value.split(";");
  }

  static double doubleConverter(dynamic input, {double fallbackValue = 0}) {
    if (input == null || input.toString().isEmpty) return fallbackValue;

    return double.parse(input.toString());
  }

  static int intConverter(dynamic input, {int fallbackValue = 0}) {
    if (input == null || input.toString().isEmpty) return fallbackValue;

    if (input.runtimeType == double) {
      return (input as double).toInt();
    }

    return int.tryParse(input.toString()) ?? 0;
  }

  static String stringConverter(dynamic input, {String fallbackValue = ""}) =>
      (input ?? fallbackValue).toString();

  static List listConverter(dynamic input, {List fallbackValue = const []}) {
    if (input == null) return fallbackValue;
    return (input as List).isEmpty ? fallbackValue : input;
  }

  static TimeOfDay timeOfDayConverter(dynamic input) {
    List<String> parts = stringConverter(input).split(":");

    if (parts.length < 2) {
      return const TimeOfDay(hour: 00, minute: 00);
    }

    return TimeOfDay(
      hour: intConverter(parts[0]),
      minute: intConverter(parts[1]),
    );
  }
}
