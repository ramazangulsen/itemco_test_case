import 'package:flutter/material.dart';
import 'package:ny_times_articles_part/config/base64_images.dart';

//const String versionText = "1.0.0 (0)";
const String versionTextAndroid = "";
const String versionTextIOS = "";

DateTime lastRelease = DateTime(2023, 7, 24, 13, 30);

const pingAddress = "";
const pingPort = 443;

const Duration orderSendTimeout = Duration(seconds: 20);

const commonImages = base64Images;

///Views will define here
const Widget? splashView = null;
const Widget? articleView = null;
