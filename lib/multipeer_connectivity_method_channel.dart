import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'multipeer_connectivity_platform_interface.dart';

/// An implementation of [MultipeerConnectivityPlatform] that uses method channels.
class MethodChannelMultipeerConnectivity extends MultipeerConnectivityPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('multipeer_connectivity');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
