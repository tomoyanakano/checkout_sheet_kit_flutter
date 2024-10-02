import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'checkout_sheet_kit_sdk_method_channel.dart';

abstract class CheckoutSheetKitSdkPlatform extends PlatformInterface {
  /// Constructs a CheckoutSheetKitSdkPlatform.
  CheckoutSheetKitSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static CheckoutSheetKitSdkPlatform _instance = MethodChannelCheckoutSheetKitSdk();

  /// The default instance of [CheckoutSheetKitSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelCheckoutSheetKitSdk].
  static CheckoutSheetKitSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CheckoutSheetKitSdkPlatform] when
  /// they register themselves.
  static set instance(CheckoutSheetKitSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
