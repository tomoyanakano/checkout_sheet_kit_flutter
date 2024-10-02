import 'package:flutter_test/flutter_test.dart';
import 'package:checkout_sheet_kit_sdk/checkout_sheet_kit_sdk.dart';
import 'package:checkout_sheet_kit_sdk/checkout_sheet_kit_sdk_platform_interface.dart';
import 'package:checkout_sheet_kit_sdk/checkout_sheet_kit_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCheckoutSheetKitSdkPlatform
    with MockPlatformInterfaceMixin
    implements CheckoutSheetKitSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CheckoutSheetKitSdkPlatform initialPlatform = CheckoutSheetKitSdkPlatform.instance;

  test('$MethodChannelCheckoutSheetKitSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCheckoutSheetKitSdk>());
  });

  test('getPlatformVersion', () async {
    CheckoutSheetKitSdk checkoutSheetKitSdkPlugin = CheckoutSheetKitSdk();
    MockCheckoutSheetKitSdkPlatform fakePlatform = MockCheckoutSheetKitSdkPlatform();
    CheckoutSheetKitSdkPlatform.instance = fakePlatform;

    expect(await checkoutSheetKitSdkPlugin.getPlatformVersion(), '42');
  });
}
