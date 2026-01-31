//
//  MCPNetworkService.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Foundation

internal protocol MCPNetworkService {
    var peer: MCPPeer? { get set }
    
    func start(connection: MCPConnection, completion: @escaping JSONCallback) -> Void
    func stop(completion: @escaping JSONCallback) -> Void
    
    func connect(completion: @escaping JSONCallback) -> Void
    func disconnect(completion: @escaping JSONCallback) -> Void
}
