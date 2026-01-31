//
//  MCPConnection.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Foundation

internal struct MCPConnection: Codable {
    let name: String
    let service: String
    let type: MCPConnectionType
}
