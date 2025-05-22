import 'package:flutter_test/flutter_test.dart';
import 'package:multipeer_connectivity/multipeer_connectivity.dart';
import 'package:multipeer_connectivity/multipeer_connectivity_platform_interface.dart';
import 'package:multipeer_connectivity/multipeer_connectivity_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMultipeerConnectivityPlatform
    with MockPlatformInterfaceMixin
    implements MultipeerConnectivityPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MultipeerConnectivityPlatform initialPlatform = MultipeerConnectivityPlatform.instance;

  test('$MethodChannelMultipeerConnectivity is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMultipeerConnectivity>());
  });

  test('getPlatformVersion', () async {
    MultipeerConnectivity multipeerConnectivityPlugin = MultipeerConnectivity();
    MockMultipeerConnectivityPlatform fakePlatform = MockMultipeerConnectivityPlatform();
    MultipeerConnectivityPlatform.instance = fakePlatform;

    expect(await multipeerConnectivityPlugin.getPlatformVersion(), '42');
  });
}
