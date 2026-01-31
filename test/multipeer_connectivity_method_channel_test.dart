import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multipeer_connectivity/src/multipeer_connectivity_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelMultipeerConnectivity platform = MethodChannelMultipeerConnectivity();
  const MethodChannel channel = MethodChannel('multipeer_connectivity');

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
