import 'package:flutter/foundation.dart';
import 'package:multipeer_connectivity/src/multipeer_connectivity_platform_interface.dart';

mixin class NetworkService {
  @protected
  final _platform = MultipeerConnectivityPlatform.instance;

  Future<void> start() async {
    await _platform.getPlatformVersion();
  }

  Future<void> stop() async {}

  Future<void> connect() async {}
  Future<void> disconnect() async {}
}
