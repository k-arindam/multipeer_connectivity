//
//  MCPMethodCall.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Foundation

internal enum MCPMethodCallFTN: String, MCPEnum {
    case start
    case stop
    case connect
    case disconnect
}

internal enum MCPMethodCallNTF: String, MCPEnum {
    case sync
}
