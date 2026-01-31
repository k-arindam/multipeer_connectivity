import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'multipeer_connectivity_method_channel.dart';

abstract class MultipeerConnectivityPlatform extends PlatformInterface {
  /// Constructs a MultipeerConnectivityPlatform.
  MultipeerConnectivityPlatform() : super(token: _token);

  static final Object _token = Object();

  static MultipeerConnectivityPlatform _instance = MethodChannelMultipeerConnectivity();

  /// The default instance of [MultipeerConnectivityPlatform] to use.
  ///
  /// Defaults to [MethodChannelMultipeerConnectivity].
  static MultipeerConnectivityPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MultipeerConnectivityPlatform] when
  /// they register themselves.
  static set instance(MultipeerConnectivityPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
