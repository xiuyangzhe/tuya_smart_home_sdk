import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tuya_smart_home_sdk_platform_interface.dart';

/// An implementation of [TuyaSmartHomeSdkPlatform] that uses method channels.
class MethodChannelTuyaSmartHomeSdk extends TuyaSmartHomeSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tuya_smart_home_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
