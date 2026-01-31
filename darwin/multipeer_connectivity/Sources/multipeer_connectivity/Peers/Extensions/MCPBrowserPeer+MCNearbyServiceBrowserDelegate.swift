//
//  MCPBrowserPeer+MCNearbyServiceBrowserDelegate.swift
//  multipeer_connectivity
//
//  Created by Arindam Karmakar on 25/05/25.
//

import MultipeerConnectivity

extension MCPBrowserPeer: MCNearbyServiceBrowserDelegate {
    func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) {}
    
    func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID) {}
}
