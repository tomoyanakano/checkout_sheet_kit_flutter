
import 'checkout_sheet_kit_sdk_platform_interface.dart';

class CheckoutSheetKitSdk {
  Future<String?> getPlatformVersion() {
    return CheckoutSheetKitSdkPlatform.instance.getPlatformVersion();
  }
}
