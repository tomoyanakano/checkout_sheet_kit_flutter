import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'checkout_sheet_kit_sdk_platform_interface.dart';

/// An implementation of [CheckoutSheetKitSdkPlatform] that uses method channels.
class MethodChannelCheckoutSheetKitSdk extends CheckoutSheetKitSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('checkout_sheet_kit_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
