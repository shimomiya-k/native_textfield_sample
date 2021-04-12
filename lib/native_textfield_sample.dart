
import 'dart:async';

import 'package:flutter/services.dart';

class NativeTextfieldSample {
  static const MethodChannel _channel =
      const MethodChannel('native_textfield_sample');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
