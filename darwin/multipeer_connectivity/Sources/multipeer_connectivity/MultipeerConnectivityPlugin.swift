#if os(iOS)

import UIKit
import Flutter

#elseif os(macOS)

import Cocoa
import FlutterMacOS

#endif

import Foundation

public class MultipeerConnectivityPlugin: NSObject, FlutterPlugin {
    private init(with channel: FlutterMethodChannel) {
        self.channel = channel
    }
    
    internal let encoder = JSONEncoder()
    internal let decoder = JSONDecoder()
    
    internal var channel: FlutterMethodChannel
    internal var peer: MCPPeer? = nil
    
    public static func register(with registrar: FlutterPluginRegistrar) -> Void {
#if os(iOS)
        let binaryMessenger = registrar.messenger()
#elseif os(macOS)
        let binaryMessenger = registrar.messenger
#endif
        
        let channel = FlutterMethodChannel(name: Constants.methodChannel, binaryMessenger: binaryMessenger)
        
        let instance = MultipeerConnectivityPlugin(with: channel)
        
        registrar.addMethodCallDelegate(instance, channel: instance.channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) -> Void {
        guard let method = MCPMethodCallFTN(rawValue: call.method) else {
            result(FlutterMethodNotImplemented)
            return
        }
        
        guard let args = call.arguments as? [String: Any],
              let data = try? JSONSerialization.data(withJSONObject: args)
        else {
            result(Utils.flutterError(with: "Unable to parse arguments!"))
            return
        }
        
        do {
            switch method {
            case .start:
                let connection = try decoder.decode(MCPConnection.self, from: data)
                self.start(connection: connection) { result($0) }
                
            case .stop:
                self.stop() { result($0) }
                
            case .connect:
                self.connect() { result($0) }
                
            case .disconnect:
                self.disconnect() { result($0) }
            }
        } catch {
            result(Utils.flutterError(with: error.localizedDescription))
        }
    }
    
    internal func invoke<T>(method: MCPMethodCallNTF, with args: T) -> Void where T: Codable {
        guard let payload = try? encoder.encode(args), let json = try? JSONSerialization.jsonObject(with: payload) as? JSON else { return }
        channel.invokeMethod(method.rawValue, arguments: json)
    }
}
