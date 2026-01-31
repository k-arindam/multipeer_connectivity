//
//  MCPPeer.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import MultipeerConnectivity

internal class MCPPeer: NSObject {
    internal init(with id: MCPeerID) {
        self.peerID = id
        self.peerSession = .init(peer: peerID, securityIdentity: nil, encryptionPreference: .none)
        
        super.init()
        
        self.peerSession.delegate = self
    }
    
    internal let peerID: MCPeerID
    internal let peerSession: MCSession
    
    internal var connectedPeers: [MCPeerID] { self.peerSession.connectedPeers }
    
    deinit {
        self.peerSession.disconnect()
        self.peerSession.delegate = nil
    }
}
