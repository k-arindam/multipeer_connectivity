//
//  Utils.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Flutter

internal final class Utils {
    private init() {}
    
    internal static func flutterError(with message: String) -> FlutterError {
        return FlutterError(code: "MultipeerConnectivityError", message: message, details: nil)
    }
}
