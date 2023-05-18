import 'package:flutter_test/flutter_test.dart';
import 'package:tuya_smart_home_sdk/tuya_smart_home_sdk.dart';
import 'package:tuya_smart_home_sdk/tuya_smart_home_sdk_platform_interface.dart';
import 'package:tuya_smart_home_sdk/tuya_smart_home_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTuyaSmartHomeSdkPlatform
    with MockPlatformInterfaceMixin
    implements TuyaSmartHomeSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TuyaSmartHomeSdkPlatform initialPlatform = TuyaSmartHomeSdkPlatform.instance;

  test('$MethodChannelTuyaSmartHomeSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTuyaSmartHomeSdk>());
  });

  test('getPlatformVersion', () async {
    TuyaSmartHomeSdk tuyaSmartHomeSdkPlugin = TuyaSmartHomeSdk();
    MockTuyaSmartHomeSdkPlatform fakePlatform = MockTuyaSmartHomeSdkPlatform();
    TuyaSmartHomeSdkPlatform.instance = fakePlatform;

    expect(await tuyaSmartHomeSdkPlugin.getPlatformVersion(), '42');
  });
}
