
import 'tuya_smart_home_sdk_platform_interface.dart';

class TuyaSmartHomeSdk {
  Future<String?> getPlatformVersion() {
    return TuyaSmartHomeSdkPlatform.instance.getPlatformVersion();
  }
}
