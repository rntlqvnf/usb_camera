
import 'dart:async';

import 'package:flutter/services.dart';

class AndroidUsbCamera {
  static const MethodChannel _channel =
      const MethodChannel('android_usb_camera');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
