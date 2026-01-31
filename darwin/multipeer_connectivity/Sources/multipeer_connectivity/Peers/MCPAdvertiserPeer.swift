//
//  MCPAdvertiserPeer.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import MultipeerConnectivity

internal final class MCPAdvertiserPeer: MCPPeer {
    internal init(name: String, service: String) {
        let id = MCPeerID(displayName: name)
        
        self.peerAdvertiser = .init(peer: id, discoveryInfo: nil, serviceType: service)
        
        super.init(with: id)
        
        self.peerAdvertiser.delegate = self
        self.peerAdvertiser.startAdvertisingPeer()
    }
    
    private let peerAdvertiser: MCNearbyServiceAdvertiser
    
    deinit {
        self.peerAdvertiser.stopAdvertisingPeer()
        self.peerAdvertiser.delegate = nil
    }
}
