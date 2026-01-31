//
//  MCPBrowserPeer.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import MultipeerConnectivity

internal final class MCPBrowserPeer: MCPPeer {
    internal init(name: String, service: String) {
        let id = MCPeerID(displayName: name)
        
        self.peerBrowser = .init(peer: id, serviceType: service)
        
        super.init(with: id)
        
        self.peerBrowser.delegate = self
        self.peerBrowser.startBrowsingForPeers()
    }
    
    private let peerBrowser: MCNearbyServiceBrowser
    
    deinit {
        self.peerBrowser.stopBrowsingForPeers()
        self.peerBrowser.delegate = nil
    }
}
