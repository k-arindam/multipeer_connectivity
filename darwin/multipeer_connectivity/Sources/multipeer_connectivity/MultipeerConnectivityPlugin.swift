#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#endif

#if os(iOS) || os(macOS)

public class MultipeerConnectivityPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    #if os(iOS)
    let binaryMessenger = registrar.messenger()
    #elseif os(macOS)
    let binaryMessenger = registrar.messenger
    #endif

    let channel = FlutterMethodChannel(name: "multipeer_connectivity", binaryMessenger: binaryMessenger)
    let instance = MultipeerConnectivityPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("darwin")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

#endif

// import Flutter
// import UIKit

// public class MultipeerConnectivityPlugin: NSObject, FlutterPlugin {
//   public static func register(with registrar: FlutterPluginRegistrar) {
//     let channel = FlutterMethodChannel(name: "multipeer_connectivity", binaryMessenger: registrar.messenger())
//     let instance = MultipeerConnectivityPlugin()
//     registrar.addMethodCallDelegate(instance, channel: channel)
//   }

//   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//     switch call.method {
//     case "getPlatformVersion":
//       result("iOS " + UIDevice.current.systemVersion)
//     default:
//       result(FlutterMethodNotImplemented)
//     }
//   }
// }

// import Cocoa
// import FlutterMacOS

// public class MultipeerConnectivityPlugin: NSObject, FlutterPlugin {
//   public static func register(with registrar: FlutterPluginRegistrar) {
//     let channel = FlutterMethodChannel(name: "multipeer_connectivity", binaryMessenger: registrar.messenger)
//     let instance = MultipeerConnectivityPlugin()
//     registrar.addMethodCallDelegate(instance, channel: channel)
//   }

//   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
//     switch call.method {
//     case "getPlatformVersion":
//       result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
//     default:
//       result(FlutterMethodNotImplemented)
//     }
//   }
// }
