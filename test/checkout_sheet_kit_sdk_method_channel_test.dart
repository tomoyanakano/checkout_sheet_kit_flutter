import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:checkout_sheet_kit_sdk/checkout_sheet_kit_sdk_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCheckoutSheetKitSdk platform = MethodChannelCheckoutSheetKitSdk();
  const MethodChannel channel = MethodChannel('checkout_sheet_kit_sdk');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
