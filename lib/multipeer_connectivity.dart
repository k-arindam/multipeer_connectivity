
import 'multipeer_connectivity_platform_interface.dart';

class MultipeerConnectivity {
  Future<String?> getPlatformVersion() {
    return MultipeerConnectivityPlatform.instance.getPlatformVersion();
  }
}
