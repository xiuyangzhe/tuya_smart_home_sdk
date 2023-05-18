import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tuya_smart_home_sdk_method_channel.dart';

abstract class TuyaSmartHomeSdkPlatform extends PlatformInterface {
  /// Constructs a TuyaSmartHomeSdkPlatform.
  TuyaSmartHomeSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static TuyaSmartHomeSdkPlatform _instance = MethodChannelTuyaSmartHomeSdk();

  /// The default instance of [TuyaSmartHomeSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelTuyaSmartHomeSdk].
  static TuyaSmartHomeSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TuyaSmartHomeSdkPlatform] when
  /// they register themselves.
  static set instance(TuyaSmartHomeSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
