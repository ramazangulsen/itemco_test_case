import 'dart:async';
import 'package:flutter/material.dart';

enum ValueStreamType { undefined, themeChange, lifecycle }

ValueStreamType getValueStreamTypeFromString(String value) {
  for (var item in ValueStreamType.values) {
    if (convertValueStreamTypeToString(item) == value) return item;
  }
  return ValueStreamType.undefined;
}

String convertValueStreamTypeToString(ValueStreamType value) =>
    value.toString().split('.').last;

class ValueStreamModel {
  ValueStreamType type;
  dynamic data;
  dynamic payload;
  ValueChanged<dynamic>? callback;

  ValueStreamModel({
    required this.type,
    required this.data,
    this.payload,
    this.callback,
  });

  factory ValueStreamModel.fromJson(Map<String, dynamic> map) =>
      ValueStreamModel(
        type: getValueStreamTypeFromString(map["type"]),
        data: map["data"],
        payload: map["payload"],
        callback: map["callback"],
      );

  Map<String, dynamic> toMap() => {
        "type": convertValueStreamTypeToString(type),
        "data": data,
        "payload": payload,
        "callback": callback,
      };
}

class ValueStreamService {
  static final ValueStreamService _singleton = ValueStreamService._internal();

  factory ValueStreamService() => _singleton;

  StreamSubscription<ValueStreamModel>? _errorStreamSubscription;
  ValueNotifier<List<ValueStreamModel>> errorList = ValueNotifier([]);

  //Initialization area
  ValueStreamService._internal() {
    _errorStreamSubscription ??= controller.stream
        .where((e) => e.payload.toString().contains("Error"))
        .listen((event) {
      errorList.value = [event, ...errorList.value];
    });
  }

  StreamController<ValueStreamModel> controller =
      StreamController<ValueStreamModel>.broadcast();
}
