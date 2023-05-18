import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tuya_smart_home_sdk/tuya_smart_home_sdk_method_channel.dart';

void main() {
  MethodChannelTuyaSmartHomeSdk platform = MethodChannelTuyaSmartHomeSdk();
  const MethodChannel channel = MethodChannel('tuya_smart_home_sdk');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
