//
//  MultipeerConnectivityPlugin+MCPConnectionHandler.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import Foundation

extension MultipeerConnectivityPlugin: MCPNetworkService {
    internal func start(connection: MCPConnection, completion: @escaping JSONCallback) {
        switch connection.type {
        case .advertise:
            let peer = MCPAdvertiserPeer(name: connection.name, service: connection.service)
            self.peer = peer
        case .browse:
            let peer = MCPBrowserPeer(name: connection.name, service: connection.service)
            self.peer = peer
        }
    }
    
    internal func stop(completion: @escaping JSONCallback) { completion(nil) }
    
    internal func connect(completion: @escaping JSONCallback) -> Void { completion(nil) }
    
    internal func disconnect(completion: @escaping JSONCallback) -> Void { completion(nil) }
}
