import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:android_usb_camera/android_usb_camera.dart';

void main() {
  const MethodChannel channel = MethodChannel('android_usb_camera');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AndroidUsbCamera.platformVersion, '42');
  });
}
